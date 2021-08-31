import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/data/providers/movie_provider.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';

class MovieRepository extends MovieRepositoryContract {
  final MovieProvider movieProvider;

  MovieRepository(this.movieProvider);

  @override
  Future<Either<AppError, List<MovieModel>>> getPopularMovies() async {
    try {
      final movies = await movieProvider.getPopularMovies();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something was wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getNowPlayingMovies() async {
    try {
      final movies = await movieProvider.getNowPlayingMovies();
      return Right(movies);
    } on Exception {
      return Left(AppError('Something was wrong'));
    }
  }
}
