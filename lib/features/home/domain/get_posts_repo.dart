import 'package:clean_architecture/config/failures/failures.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class GetPostsRepo {
  Future<Either<Failure, List<GetResponse>>> getPostsRepo();
}
