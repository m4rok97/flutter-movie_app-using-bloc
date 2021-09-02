import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ActorEntity extends Equatable {
  final String id;
  final String name;
  final String profilePicture;

  const ActorEntity(
      {@required this.id, @required this.name, @required this.profilePicture});

  @override
  List<Object> get props => [id, name];
}
