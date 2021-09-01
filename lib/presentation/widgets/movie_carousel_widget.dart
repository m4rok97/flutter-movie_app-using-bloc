import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:test_movie_app/presentation/widgets/movie_backdrop_widget.dart';
import 'package:test_movie_app/presentation/widgets/movie_card_widget.dart';

class MovieCarouselWidget extends StatefulWidget {
  final List<MovieEntity> movies;
  final int initialPage;
  final String title;
  final bool useBackDrop;
  const MovieCarouselWidget(
      {Key key,
      @required this.movies,
      @required this.initialPage,
      @required this.title,
      @required this.useBackDrop})
      : super(key: key);

  @override
  _MovieCarouselWidgetState createState() => _MovieCarouselWidgetState();
}

class _MovieCarouselWidgetState extends State<MovieCarouselWidget> {
  PageController _pageController;

  @override
  void initState() {
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
    return Stack(children: [
      widget.useBackDrop
          ? MovieBackdropWidget()
          : Container(
              width: 0,
              height: 0,
            ),
      Positioned(
          left: ScreenUtil().screenWidth * 0.5 - widget.title.length * 5.w,
          top: 20.h,
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          )),
      PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final movie = widget.movies[index];
          return MovieCardWidget(movieId: movie.id, posterPath: movie.poster);
        },
        pageSnapping: true,
        itemCount: widget.movies?.length ?? 0,
        onPageChanged: (index) {
          if (widget.title == 'Now Playing')
            BlocProvider.of<MovieBackdropBloc>(context)
                .add(MovieBackdropChangedEvent(widget.movies[index]));
        },
      ),
    ]);
  }
}
