part of 'now_playing_movie_carousel_bloc.dart';

abstract class NowPlayingMovieCarouselEvent extends Equatable {
  const NowPlayingMovieCarouselEvent();

  @override
  List<Object> get props => [];
}

class NowPlayingCarouseLoadEvent extends NowPlayingMovieCarouselEvent {
  final int defaultIndex;

  const NowPlayingCarouseLoadEvent({this.defaultIndex = 0})
      : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  List<Object> get props => [defaultIndex];
}
