import 'package:flutter/material.dart';

import 'data/providers/movie_provider.dart';
import 'graphql/popular_movies.graphql.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final movieProvider = new MovieProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: FutureBuilder(
          future: movieProvider.getPopularMovies(),
          builder: (context,
              AsyncSnapshot<
                      List<
                          PopularMovies$Query$Movies$MovieConnection$MovieEdge>>
                  snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Text(snapshot.data[index].node.originalTitle);
                  });
            } else {
              return CircularProgressIndicator();
            }
          },
        )),
      ),
    );
  }
}
