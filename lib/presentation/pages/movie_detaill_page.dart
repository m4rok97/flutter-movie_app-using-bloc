import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_movie_app/di/get_it.dart';
import 'package:test_movie_app/presentation/blocs/movie_detail/movie_detail_bloc.dart';
import 'package:test_movie_app/presentation/widgets/actor_carousel_widget.dart';
import 'package:test_movie_app/presentation/widgets/movie_app_bar.dart';

class MovieDetailPage extends StatelessWidget {
  final MovieDetailPageArguments movieDetailPageArguments;

  const MovieDetailPage({Key key, @required this.movieDetailPageArguments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieAppBar(
        isHomePage: false,
      ),
      body: BlocProvider(
        create: (_) => getItInstance<MovieDetailBloc>()
          ..add(MovieDetailLoadEvent(movieDetailPageArguments.movieId)),
        child: MovieDetailView(),
      ),
    );
  }
}

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
      if (state is MovieDetailLoaded) {
        return Container(
          child: ListView(
            children: [
              Container(
                height: ScreenUtil().screenHeight * 0.4,
                width: ScreenUtil().screenWidth,
                child: CachedNetworkImage(
                  imageUrl: state.movieDetailEntity.backdrop,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: ScreenUtil().screenHeight * 0.1,
                width: ScreenUtil().screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Release Date: ${state.movieDetailEntity.releaseDate}',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.h,
                color: Colors.grey,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Synopsis',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Text(state.movieDetailEntity.overview,
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Actors',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                height: ScreenUtil().screenHeight * 0.25,
                width: ScreenUtil().screenWidth,
                // color: Colors.blue,
              ),
              Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight * 0.4,
                child: ActorCarouselWidget(
                    actors: state.movieDetailEntity.actors, initialPage: 1),
              )
            ],
          ),
        );
      }

      return Center(child: CircularProgressIndicator());
    });
  }
}

class MovieDetailPageArguments {
  final String movieId;

  const MovieDetailPageArguments({this.movieId});
}
