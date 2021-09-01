import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_movie_app/di/get_it.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:test_movie_app/presentation/blocs/now_playing_movie_carousel/now_playing_movie_carousel_bloc.dart';
import 'package:test_movie_app/presentation/blocs/popular_movie_carousel/popular_movie_carousel_bloc.dart';
import 'package:test_movie_app/presentation/widgets/movie_app_bar.dart';
import 'package:test_movie_app/presentation/widgets/movie_bottom_navigation_bar.dart';
import 'package:test_movie_app/presentation/widgets/movie_carousel_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MovieAppBar(),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getItInstance<NowPlayingMovieCarouselBloc>()
                ..add(NowPlayingCarouseLoadEvent()),
            ),
            BlocProvider(
              create: (_) => getItInstance<PopularMovieCarouselBloc>()
                ..add(PopularCarouseLoadEvent()),
            ),
            BlocProvider(
              create: (_) => (getItInstance<MovieBackdropBloc>()),
            ),
          ],
          child: HomeView(),
        ),
        bottomNavigationBar: MovieBottomNavigationBar());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BlocBuilder<NowPlayingMovieCarouselBloc, NowPlayingMovieCarouselState>(
          builder: (context, state) {
            if (state is NowPlayingMovieCarouselLoaded)
              return FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.6,
                  child: MovieCarouselWidget(
                    movies: state.movies,
                    initialPage: 0,
                    title: 'Now Playing',
                    useBackDrop: true,
                  ));
            return Container(height: 0, width: 0);
          },
        ),
        BlocBuilder<PopularMovieCarouselBloc, PopularMovieCarouselState>(
          builder: (context, state) {
            if (state is PopularMovieCarouselLoaded)
              return FractionallySizedBox(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.4,
                  child: MovieCarouselWidget(
                    movies: state.movies,
                    initialPage: 0,
                    title: 'Popular',
                    useBackDrop: false,
                  ));
            return Container(height: 0, width: 0);
          },
        ),
      ],
    );
  }
}
