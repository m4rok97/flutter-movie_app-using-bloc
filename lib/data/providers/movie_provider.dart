import 'package:artemis/artemis.dart';
import 'package:test_movie_app/graphql/popular_movies.graphql.dart';
import 'package:test_movie_app/core/api_constants.dart' as apiConst;

class MovieProvider {
  Future<List<PopularMovies$Query$Movies$MovieConnection$MovieEdge>>
      getPopularMovies() async {
    final client = new ArtemisClient(apiConst.graphQlUrl);

    final response = await client.execute(PopularMoviesQuery());

    final data = response.data;

    final ans = data.movies.popular.edges;

    return ans;
  }
}
