import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_movie_app/domain/entities/actor_entity.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:test_movie_app/presentation/widgets/movie_backdrop_widget.dart';
import 'package:test_movie_app/presentation/widgets/movie_card_widget.dart';

class ActorCarouselWidget extends StatefulWidget {
  final List<ActorEntity> actors;
  final int initialPage;
  const ActorCarouselWidget(
      {Key key, @required this.actors, @required this.initialPage})
      : super(key: key);

  @override
  _ActorCarouselWidgetState createState() => _ActorCarouselWidgetState();
}

class _ActorCarouselWidgetState extends State<ActorCarouselWidget> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: widget.initialPage,
        keepPage: false,
        viewportFraction: 0.3);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final actor = widget.actors[index];
          return Column(
            children: [
              Text(
                actor.name,
                style: TextStyle(color: Colors.white),
              ),
              actor.profilePicture == null
                  ? Center(child: FlutterLogo())
                  : CachedNetworkImage(imageUrl: actor.profilePicture),
            ],
          );
        },
        pageSnapping: true,
        itemCount: widget.actors?.length ?? 0,
      ),
    ]);
  }
}
