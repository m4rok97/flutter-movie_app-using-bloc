import 'package:artemis/artemis.dart';
import 'package:test_movie_app/data/models/movie_detail_model.dart';
import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/data/providers/movie_provider_contract.dart';
import 'package:test_movie_app/domain/entities/movie_detail_entity.dart';
import 'package:test_movie_app/graphql/movie_detail.graphql.dart';
import 'package:test_movie_app/graphql/now_playing_movies.graphql.dart';
import 'package:test_movie_app/graphql/popular_movies.graphql.dart';
import 'package:test_movie_app/core/api_constants/api_constants.dart';

class MovieProvider extends MovieProviderContract {
  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final client = new ArtemisClient(ApiConstants.graphQlUrl);

    final response = await client.execute(PopularMoviesQuery());

    final data = response.data;

    final ans = data.movies.popular.edges
        .map((e) => MovieModel.fromPopularMoviesModel(e.node))
        .toList();

    return ans;
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final client = new ArtemisClient(ApiConstants.graphQlUrl);

    final response = await client.execute(NowPlayingMoviesQuery());

    final data = response.data;

    final ans = data.movies.nowPlaying.edges
        .map((e) => MovieModel.fromNowPlayingMoviesModel(e.node))
        .toList();

    return ans;
  }

  @override
  Future<MovieDetailEntity> getMovieDetail(String id) async {
    final client = new ArtemisClient(ApiConstants.graphQlUrl);

    final response = await client.execute(MovieDetailQuery());

    final data = response.data;

    final movieData = data.movies.movie;

    final ans = MovieDetailModel.fromMovieDetailModel(movieData);

    return ans;
  }
}
