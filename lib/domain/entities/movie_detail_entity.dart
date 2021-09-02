import 'package:equatable/equatable.dart';

class MovieDetailEntity extends Equatable {
  String id;

  String originalTitle;

  String poster;

  String backdrop;

  String overview;

  String releaseDate;

  @override
  List<Object> get props => [id, originalTitle];

  @override
  bool get stringify => true;
}
