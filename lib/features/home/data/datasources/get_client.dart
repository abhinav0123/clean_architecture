import 'package:clean_architecture/core/constants/api_string.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'get_client.g.dart';

@RestApi()
abstract class GetClient {
  factory GetClient(Dio dio) = _GetClient;

  @GET(ApiString.getposts)
  Future<List<GetResponse>> getPosts();
}
