import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/entities/no_params.dart';
import 'package:test_movie_app/domain/use_cases/get_now_playing_movies.dart';
import 'package:test_movie_app/domain/use_cases/get_popular_movies.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';

part 'now_playing_movie_carousel_event.dart';
part 'now_playing_movie_carousel_state.dart';

class NowPlayingMovieCarouselBloc
    extends Bloc<NowPlayingMovieCarouselEvent, NowPlayingMovieCarouselState> {
  final GetNowPlayingMovies getNowPlayingMovies;
  final MovieBackdropBloc movieBackdropBloc;

  NowPlayingMovieCarouselBloc(
      {@required this.getNowPlayingMovies, @required this.movieBackdropBloc})
      : super(NowPlayingMovieCarouselInitial());

  @override
  Stream<NowPlayingMovieCarouselState> mapEventToState(
    NowPlayingMovieCarouselEvent event,
  ) async* {
    if (event is NowPlayingCarouseLoadEvent) {
      final moviesEither = await getNowPlayingMovies(NoParams());
      yield moviesEither.fold((error) => NowPlayingMovieCarouselError(),
          (movies) {
        movieBackdropBloc
            .add(MovieBackdropChangedEvent(movies[event.defaultIndex]));
        return NowPlayingMovieCarouselLoaded(
            movies: movies, defaultIndex: event.defaultIndex);
      });
    }
  }
}
