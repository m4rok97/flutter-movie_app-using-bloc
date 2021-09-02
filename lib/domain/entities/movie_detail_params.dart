import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class MovieDetailParams extends Equatable {
  final String id;

  MovieDetailParams({@required this.id});

  @override
  List<Object> get props => [id];
}
