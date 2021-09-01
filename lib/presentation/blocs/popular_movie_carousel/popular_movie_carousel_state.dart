part of 'popular_movie_carousel_bloc.dart';

abstract class PopularMovieCarouselState extends Equatable {
  const PopularMovieCarouselState();

  @override
  List<Object> get props => [];
}

class PopularMovieCarouselInitial extends PopularMovieCarouselState {}

class PopularMovieCarouselError extends PopularMovieCarouselState {}

class PopularMovieCarouselLoaded extends PopularMovieCarouselState {
  final List<MovieEntity> movies;
  final int defaultIndex;

  const PopularMovieCarouselLoaded({this.movies, this.defaultIndex = 0})
      : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  List<Object> get props => [movies, defaultIndex];
}
