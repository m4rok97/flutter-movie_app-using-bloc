import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_movie_app/core/api_constants/api_constants.dart';
import 'package:test_movie_app/presentation/pages/movie_detaill_page.dart';

class MovieCardWidget extends StatelessWidget {
  final String movieId;
  final String posterPath;

  const MovieCardWidget(
      {Key key, @required this.movieId, @required this.posterPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 45.h),
      child: Material(
        borderRadius: BorderRadius.circular(16.w),
        elevation: 32,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => MovieDetailPage(
                    movieDetailPageArguments:
                        MovieDetailPageArguments(movieId: movieId))));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.w),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: '${ApiConstants.baseImageUrl}$posterPath',
            ),
          ),
        ),
      ),
    );
  }
}
