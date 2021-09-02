import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:test_movie_app/domain/entities/actor_entity.dart';

class MovieDetailEntity extends Equatable {
  final String id;

  final String originalTitle;

  final String poster;

  final String backdrop;

  final String overview;

  final String releaseDate;

  final List<ActorEntity> actors;

  const MovieDetailEntity(
      {@required this.id,
      @required this.originalTitle,
      @required this.poster,
      @required this.backdrop,
      @required this.overview,
      @required this.releaseDate,
      @required this.actors});

  @override
  List<Object> get props => [id, originalTitle];

  @override
  bool get stringify => true;
}
