import 'package:clean_architecture/config/failures/failures.dart';
import 'package:clean_architecture/features/home/data/datasources/get_client.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:clean_architecture/features/home/domain/get_posts_repo.dart';
import 'package:dartz/dartz.dart';

class GetRepositoryImpl implements GetPostsRepo {
  final GetClient getClient;

  GetRepositoryImpl(this.getClient);
  @override
  Future<Either<Failure, List<GetResponse>>> getPostsRepo() async {
    try {
      final result = await getClient.getPosts();
      return right(result);
    } on ServerFailure catch (_) {
      return left(ServerFailure());
    } on TimeoutFailure catch (_) {
      return left(TimeoutFailure());
    } catch (e) {
      return left(GeneralFailure());
    }
  }
}
