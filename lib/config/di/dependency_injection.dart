import 'package:clean_architecture/config/routes/navigation_service.dart';
import 'package:clean_architecture/core/constants/api_string.dart';
import 'package:clean_architecture/core/constants/app_string.dart';
import 'package:clean_architecture/features/home/data/datasources/get_client.dart';
import 'package:clean_architecture/features/home/data/repositories/get_response_impl.dart';
import 'package:clean_architecture/features/home/domain/get_posts_repo.dart';
import 'package:clean_architecture/features/home/domain/usecases/get_response_usecase.dart';
import 'package:clean_architecture/features/home/presentation/bloc/get_response_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiString.baseUrl,
      contentType: Headers.jsonContentType,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );
  // dio.options.contentType = "application/json";

  if (kDebugMode) {
    dio.interceptors.addAll(
      [
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            return handler.next(options);
          },
        ),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          error: true,
        )
      ],
    );
  }

  sl.registerSingleton<Dio>(dio);

  sl.registerLazySingleton(() => NavigationService());
  sl.registerFactory(() => GetResponseUsecase(sl()));
  sl.registerFactory<GetPostsRepo>(() => GetRepositoryImpl(sl()));
  sl.registerFactory(() => GetResponseCubit(sl()));
  sl.registerLazySingleton(() => GetClient(sl()));
}
