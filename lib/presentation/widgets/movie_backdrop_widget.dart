import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_movie_app/core/api_constants/api_constants.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';

class MovieBackdropWidget extends StatelessWidget {
  const MovieBackdropWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 1,
      widthFactor: 1,
      child: BlocBuilder<MovieBackdropBloc, MovieBackdropState>(
        builder: (context, state) {
          if (state is MovieBackdropChanged) {
            return CachedNetworkImage(
              imageUrl: '${ApiConstants.baseImageUrl}${state.movie.backdrop}',
              fit: BoxFit.fitHeight,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
