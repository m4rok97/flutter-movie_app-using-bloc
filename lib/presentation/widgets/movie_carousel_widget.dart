import 'package:flutter/material.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/presentation/widgets/movie_card_widget.dart';

class MovieCarouselWidget extends StatefulWidget {
  final List<MovieEntity> movies;
  final int initialPage;

  const MovieCarouselWidget(
      {Key key, @required this.movies, @required this.initialPage})
      : super(key: key);

  @override
  _MovieCarouselWidgetState createState() => _MovieCarouselWidgetState();
}

class _MovieCarouselWidgetState extends State<MovieCarouselWidget> {
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
        initialPage: widget.initialPage,
        keepPage: false,
        viewportFraction: 0.6);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemBuilder: (context, index) {
        final movie = widget.movies[index];
        return MovieCardWidget(movieId: movie.id, posterPath: movie.poster);
      },
      pageSnapping: true,
      itemCount: widget.movies?.length ?? 0,
    );
  }
}
