import 'package:flutter/material.dart';
import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/data/repositories/movie_repository.dart';

import 'data/providers/movie_provider.dart';
import 'graphql/now_playing_movies.graphql.dart';
import 'graphql/popular_movies.graphql.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final movieProvider = new MovieRepository(new MovieProvider());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: Container(
                height: 200,
                child: FutureBuilder(
                  future: movieProvider.getPopularMovies(),
                  builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          Text('Popular Movies'),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Text(snapshot.data[index].originalTitle);
                              }),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              child: Container(
                height: 200,
                child: FutureBuilder(
                  future: movieProvider.getNowPlayingMovies(),
                  builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          Text('Popular Movies'),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return Text(snapshot.data[index].originalTitle);
                              }),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
