import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/domain/entities/movie_detail_entity.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';

abstract class MovieProviderContract {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<MovieDetailEntity> getMovieDetail(String id);
}
