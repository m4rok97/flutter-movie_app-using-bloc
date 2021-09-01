import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_movie_app/di/get_it.dart';
import 'package:test_movie_app/presentation/blocs/movie_carousel/movie_carousel_bloc.dart';
import 'package:test_movie_app/presentation/themes/theme_color.dart';
import 'package:test_movie_app/presentation/widgets/movie_app_bar.dart';
import 'package:test_movie_app/presentation/widgets/movie_bottom_navigation_bar.dart';
import 'package:test_movie_app/presentation/widgets/movie_carousel_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MovieAppBar(),
        body: BlocProvider(
          create: (_) =>
              getItInstance<MovieCarouselBloc>()..add(CarouseLoadEvent()),
          child: HomeView(),
        ),
        bottomNavigationBar: MovieBottomNavigationBar());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCarouselBloc, MovieCarouselState>(
      builder: (context, state) {
        if (state is MovieCarouselLoaded) {
          print(state.movies);
          return Stack(
            fit: StackFit.expand,
            children: [
              FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.6,
                  child: MovieCarouselWidget(
                    movies: state.movies,
                    initialPage: 0,
                  )),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: 0.4,
                child: Placeholder(
                  color: Colors.grey,
                ),
              )
            ],
          );
        }
      },
    );
  }
}
