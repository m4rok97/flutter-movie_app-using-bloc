import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/entities/no_params.dart';
import 'package:test_movie_app/domain/use_cases/get_now_playing_movies.dart';
import 'package:test_movie_app/domain/use_cases/get_popular_movies.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';

part 'popular_movie_carousel_event.dart';
part 'popular_movie_carousel_state.dart';

class PopularMovieCarouselBloc
    extends Bloc<PopularMovieCarouselEvent, PopularMovieCarouselState> {
  final GetPopularMovies getPopularMovies;

  PopularMovieCarouselBloc({@required this.getPopularMovies})
      : super(PopularMovieCarouselInitial());

  @override
  Stream<PopularMovieCarouselState> mapEventToState(
    PopularMovieCarouselEvent event,
  ) async* {
    if (event is PopularCarouseLoadEvent) {
      final moviesEither = await getPopularMovies(NoParams());
      yield moviesEither.fold((error) => PopularMovieCarouselError(), (movies) {
        return PopularMovieCarouselLoaded(
            movies: movies, defaultIndex: event.defaultIndex);
      });
    }
  }
}
