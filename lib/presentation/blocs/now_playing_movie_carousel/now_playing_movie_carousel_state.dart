part of 'now_playing_movie_carousel_bloc.dart';

abstract class NowPlayingMovieCarouselState extends Equatable {
  const NowPlayingMovieCarouselState();

  @override
  List<Object> get props => [];
}

class NowPlayingMovieCarouselInitial extends NowPlayingMovieCarouselState {}

class NowPlayingMovieCarouselError extends NowPlayingMovieCarouselState {}

class NowPlayingMovieCarouselLoaded extends NowPlayingMovieCarouselState {
  final List<MovieEntity> movies;
  final int defaultIndex;

  const NowPlayingMovieCarouselLoaded({this.movies, this.defaultIndex = 0})
      : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  List<Object> get props => [movies, defaultIndex];
}
