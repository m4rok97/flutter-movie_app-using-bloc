import 'package:dartz/dartz.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';

abstract class MovieRepositoryContract {
  Future<Either<AppError, List<MovieEntity>>> getPopularMovies();
  Future<Either<AppError, List<MovieEntity>>> getNowPlayingMovies();
}
