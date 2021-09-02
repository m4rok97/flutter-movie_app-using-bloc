import 'package:flutter/material.dart';
import 'package:test_movie_app/presentation/widgets/movie_app_bar.dart';

class MovieDetailPage extends StatelessWidget {
  final MovieDetailPageArguments movieDetailPageArguments;

  const MovieDetailPage({Key key, @required this.movieDetailPageArguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieAppBar(),
    );
  }
}

class MovieDetailPageArguments {
  final String movieId;

  const MovieDetailPageArguments({this.movieId});
}
