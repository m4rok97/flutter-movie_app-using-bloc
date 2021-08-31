import 'package:dartz/dartz.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';

class GetPopularMovies {
  final MovieRepositoryContract repository;

  GetPopularMovies(this.repository);

  Future<Either<AppError, List<MovieEntity>>> call() async {
    return await repository.getPopularMovies();
  }
}
