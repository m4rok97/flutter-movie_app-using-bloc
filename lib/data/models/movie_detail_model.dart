import 'package:test_movie_app/domain/entities/movie_detail_entity.dart';
import 'package:test_movie_app/graphql/movie_detail.dart';

class MovieDetailModel extends MovieDetailEntity {
  String id;

  String originalTitle;

  String poster;

  String backdrop;

  String overview;

  String releaseDate;

  MovieDetailModel(
      {this.id,
      this.originalTitle,
      this.poster,
      this.backdrop,
      this.overview,
      this.releaseDate});

  factory MovieDetailModel.fromMovieDetailModel(
      MovieDetail$Query$Movies$Movie model) {
    return MovieDetailModel(
        id: model.id,
        overview: model.overview,
        originalTitle: model.originalTitle,
        poster: model.poster,
        backdrop: model.backdrop,
        releaseDate: model.releaseDate);
  }
}
