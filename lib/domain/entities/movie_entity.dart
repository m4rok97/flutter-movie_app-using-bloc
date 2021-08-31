import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String id;
  final int budget;
  final String originalTitle;
  final String poster;
  final String backdrop;

  const MovieEntity(
      {this.id, this.budget, this.originalTitle, this.poster, this.backdrop})
      : assert(id != null, 'Movie id must not be null');

  @override
  List<Object> get props => [id, originalTitle];

  @override
  bool get stringify => true;
}
