import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:clean_architecture/features/home/domain/usecases/get_response_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_response_cubit.freezed.dart';
part 'get_response_state.dart';

class GetResponseCubit extends Cubit<GetResponseState> {
  final GetResponseUsecase getResponseUsecase;
  GetResponseCubit(this.getResponseUsecase) : super(GetResponseState.initial());

  Future<void> fetchPosts() async {
    emit(GetResponseState.loading());
    final response = await getResponseUsecase();
    response.fold(
      (failure) => emit(GetResponseState.error(failure.message)),
      (data) => emit(GetResponseState.loaded(data)),
    );
  }
}
