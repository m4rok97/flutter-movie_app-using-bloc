part of 'popular_movie_carousel_bloc.dart';

abstract class PopularMovieCarouselEvent extends Equatable {
  const PopularMovieCarouselEvent();

  @override
  List<Object> get props => [];
}

class PopularCarouseLoadEvent extends PopularMovieCarouselEvent {
  final int defaultIndex;

  const PopularCarouseLoadEvent({this.defaultIndex = 0})
      : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  List<Object> get props => [defaultIndex];
}
