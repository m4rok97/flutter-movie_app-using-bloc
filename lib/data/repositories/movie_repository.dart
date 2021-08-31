import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/data/providers/movie_provider.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';

class MovieRepository extends MovieRepositoryContract {
  final MovieProvider movieProvider;

  MovieRepository(this.movieProvider);

  @override
  Future<List<MovieModel>> getPopularMovies() {
    try {
      final movies = movieProvider.getPopularMovies();
      return movies;
    } on Exception {
      return null;
    }
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() {
    try {
      final movies = movieProvider.getNowPlayingMovies();
      return movies;
    } on Exception {
      return null;
    }
  }
}
