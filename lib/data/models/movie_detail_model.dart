import 'package:test_movie_app/data/models/actor_model.dart';
import 'package:test_movie_app/domain/entities/actor_entity.dart';
import 'package:test_movie_app/domain/entities/movie_detail_entity.dart';
import 'package:test_movie_app/graphql/movie_detail.dart';

class MovieDetailModel extends MovieDetailEntity {
  final String id;

  final String originalTitle;

  final String poster;

  final String backdrop;

  final String overview;

  final String releaseDate;

  final List<ActorEntity> actors;

  const MovieDetailModel(
      {this.id,
      this.originalTitle,
      this.poster,
      this.backdrop,
      this.overview,
      this.releaseDate,
      this.actors});

  factory MovieDetailModel.fromMovieDetailModel(
      MovieDetail$Query$Movies$Movie model) {
    return MovieDetailModel(
        id: model.id,
        overview: model.overview,
        originalTitle: model.originalTitle,
        poster: model.poster,
        backdrop: model.backdrop,
        releaseDate: model.releaseDate,
        actors: model.credits.cast
            .map((e) => ActorModel.fromMovieDetailModel(e.value))
            .toList());
  }
}
