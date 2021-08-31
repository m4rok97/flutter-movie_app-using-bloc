import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/graphql/now_playing_movies.graphql.dart';
import 'package:test_movie_app/graphql/popular_movies.graphql.dart';

class MovieModel extends MovieEntity {
  final String id;
  final int budget;
  final String originalTitle;
  final String poster;
  final String backdrop;

  MovieModel(
      {this.id, this.budget, this.originalTitle, this.poster, this.backdrop})
      : super(
            id: id,
            budget: budget,
            originalTitle: originalTitle,
            poster: poster,
            backdrop: backdrop);

  factory MovieModel.fromPopularMoviesModel(
      PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie model) {
    return MovieModel(
        id: model.id,
        budget: model.budget,
        originalTitle: model.originalTitle,
        poster: model.poster,
        backdrop: model.backdrop);
  }

  factory MovieModel.fromNowPlayingMoviesModel(
      NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie model) {
    return MovieModel(
        id: model.id,
        budget: model.budget,
        originalTitle: model.originalTitle,
        poster: model.poster,
        backdrop: model.backdrop);
  }
}
