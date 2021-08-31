import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/entities/no_params.dart';
import 'package:test_movie_app/domain/use_cases/get_popular_movies.dart';

part 'movie_carousel_event.dart';
part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  final GetPopularMovies getPopularMovies;

  MovieCarouselBloc({@required this.getPopularMovies})
      : super(MovieCarouselInitial());

  @override
  Stream<MovieCarouselState> mapEventToState(
    MovieCarouselEvent event,
  ) async* {
    if (event is CarouseLoadEvent) {
      final moviesEither = await getPopularMovies(NoParams());
      yield moviesEither.fold(
          (error) => MovieCarouselError(),
          (movies) => MovieCarouselLoaded(
              movies: movies, defaultIndex: event.defaultIndex));
    }
  }
}
