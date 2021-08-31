import 'package:dartz/dartz.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/entities/no_params.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';
import 'package:test_movie_app/domain/use_cases/use_case.dart';

class GetPopularMovies extends UseCase<List<MovieEntity>, NoParams> {
  final MovieRepositoryContract repository;

  GetPopularMovies(this.repository);

  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getPopularMovies();
  }
}
