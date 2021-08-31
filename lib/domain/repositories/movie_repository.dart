import 'package:test_movie_app/domain/entities/movie_entity.dart';

abstract class MovieRepositoryContract {
  Future<List<MovieEntity>> getPopularMovies();
  Future<List<MovieEntity>> getNowPlayingMovies();
}
