import 'package:clean_architecture/config/failures/failures.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:clean_architecture/features/home/domain/get_posts_repo.dart';
import 'package:dartz/dartz.dart';

class GetResponseUsecase {
  final GetPostsRepo getPostsRepo;

  GetResponseUsecase(this.getPostsRepo);

  Future<Either<Failure, List<GetResponse>>> call() async {
    return await getPostsRepo.getPostsRepo();
  }
}
