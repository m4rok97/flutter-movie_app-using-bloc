import 'package:artemis/artemis.dart';
import 'package:test_movie_app/graphql/now_playing_movies.graphql.dart';
import 'package:test_movie_app/graphql/popular_movies.graphql.dart';
import 'package:test_movie_app/core/api_constants.dart' as apiConst;

class MovieProvider {
  Future<List<PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie>>
      getPopularMovies() async {
    final client = new ArtemisClient(apiConst.graphQlUrl);

    final response = await client.execute(PopularMoviesQuery());

    final data = response.data;

    final ans = data.movies.popular.edges.map((e) => e.node).toList();

    return ans;
  }

  Future<List<NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie>>
      getNowPlayingMovies() async {
    final client = new ArtemisClient(apiConst.graphQlUrl);

    final response = await client.execute(NowPlayingMoviesQuery());

    final data = response.data;

    final ans = data.movies.nowPlaying.edges.map((e) => e.node).toList();

    return ans;
  }
}
