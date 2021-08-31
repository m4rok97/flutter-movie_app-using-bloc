import 'package:get_it/get_it.dart';
import 'package:test_movie_app/data/providers/movie_provider.dart';
import 'package:test_movie_app/data/providers/movie_provider_contract.dart';
import 'package:test_movie_app/data/repositories/movie_repository.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';
import 'package:test_movie_app/domain/use_cases/get_now_playing_movies.dart';
import 'package:test_movie_app/domain/use_cases/get_popular_movies.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance
      .registerLazySingleton<MovieProviderContract>(() => MovieProvider());

  getItInstance.registerLazySingleton<MovieRepositoryContract>(
      () => MovieRepository(getItInstance()));

  getItInstance.registerLazySingleton<GetPopularMovies>(
      () => GetPopularMovies(getItInstance()));

  getItInstance.registerLazySingleton<GetNowPlayingMovies>(
      () => GetNowPlayingMovies(getItInstance()));
}
