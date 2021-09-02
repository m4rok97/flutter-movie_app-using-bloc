import 'package:meta/meta.dart';
import 'package:test_movie_app/domain/entities/actor_entity.dart';
import 'package:test_movie_app/graphql/movie_detail.dart';

class ActorModel extends ActorEntity {
  final String id;
  final String name;
  final String profilePicture;

  const ActorModel(
      {@required this.id, @required this.name, @required this.profilePicture});
  factory ActorModel.fromMovieDetailModel(
      MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
          model) {
    return ActorModel(
        id: model.id, name: model.name, profilePicture: model.profilePicture);
  }
}
