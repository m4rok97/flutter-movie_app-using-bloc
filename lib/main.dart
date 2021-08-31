import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test_movie_app/data/models/movie_model.dart';
import 'package:test_movie_app/data/repositories/movie_repository.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/use_cases/get_popular_movies.dart';

import 'data/providers/movie_provider.dart';
import 'domain/entities/movie_entity.dart';
import 'domain/entities/no_params.dart';
import 'domain/use_cases/get_now_playing_movies.dart';
import 'domain/use_cases/get_now_playing_movies.dart';
import 'graphql/now_playing_movies.graphql.dart';
import 'graphql/popular_movies.graphql.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GetNowPlayingMovies getNowPlayingMovies =
      new GetNowPlayingMovies(MovieRepository(MovieProvider()));
  final GetPopularMovies getPopularMovies =
      new GetPopularMovies(MovieRepository(MovieProvider()));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movies App'),
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
              child: Container(
                height: 200,
                child: FutureBuilder(
                  future: getPopularMovies.call(NoParams()),
                  builder: (context,
                      AsyncSnapshot<Either<AppError, List<MovieEntity>>>
                          snapshot) {
                    if (snapshot.hasData) {
                      final eitherResponse = snapshot.data;
                      List<MovieEntity> movies = [];
                      eitherResponse.fold((l) {
                        print('error');
                      }, (r) {
                        movies = r;
                      });
                      return Column(
                        children: [
                          Text('Popular Movies'),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: movies.length,
                              itemBuilder: (context, index) {
                                return Text(movies[index].originalTitle);
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
                  future: getNowPlayingMovies.call(NoParams()),
                  builder: (context,
                      AsyncSnapshot<Either<AppError, List<MovieEntity>>>
                          snapshot) {
                    if (snapshot.hasData) {
                      final eitherResponse = snapshot.data;
                      List<MovieEntity> movies = [];
                      eitherResponse.fold((l) {
                        print('error');
                      }, (r) {
                        movies = r;
                      });
                      return Column(
                        children: [
                          Text('Now Playing Movies'),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: movies.length,
                              itemBuilder: (context, index) {
                                return Text(movies[index].originalTitle);
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
