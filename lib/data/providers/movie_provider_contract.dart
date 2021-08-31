import 'package:test_movie_app/data/models/movie_model.dart';

abstract class MovieProviderContract {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getNowPlayingMovies();
}
