// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'movie_detail.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
    with EquatableMixin {
  MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person();

  factory MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person.fromJson(
          Map<String, dynamic> json) =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$PersonFromJson(
          json);

  String id;

  String name;

  String profilePicture;

  @override
  List<Object> get props => [id, name, profilePicture];
  Map<String, dynamic> toJson() =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$PersonToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson
    with EquatableMixin {
  MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson();

  factory MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson.fromJson(
          Map<String, dynamic> json) =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPersonFromJson(
          json);

  String character;

  String id;

  MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
      value;

  @override
  List<Object> get props => [character, id, value];
  Map<String, dynamic> toJson() =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPersonToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query$Movies$Movie$ICreditsWithPerson with EquatableMixin {
  MovieDetail$Query$Movies$Movie$ICreditsWithPerson();

  factory MovieDetail$Query$Movies$Movie$ICreditsWithPerson.fromJson(
          Map<String, dynamic> json) =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPersonFromJson(json);

  List<MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson>
      cast;

  @override
  @JsonKey(name: '__typename')
  String typeName;

  @override
  List<Object> get props => [cast, typeName];
  Map<String, dynamic> toJson() =>
      _$MovieDetail$Query$Movies$Movie$ICreditsWithPersonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query$Movies$Movie with EquatableMixin {
  MovieDetail$Query$Movies$Movie();

  factory MovieDetail$Query$Movies$Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieDetail$Query$Movies$MovieFromJson(json);

  String id;

  String originalTitle;

  String poster;

  String backdrop;

  String overview;

  MovieDetail$Query$Movies$Movie$ICreditsWithPerson credits;

  @override
  List<Object> get props =>
      [id, originalTitle, poster, backdrop, overview, credits];
  Map<String, dynamic> toJson() => _$MovieDetail$Query$Movies$MovieToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query$Movies with EquatableMixin {
  MovieDetail$Query$Movies();

  factory MovieDetail$Query$Movies.fromJson(Map<String, dynamic> json) =>
      _$MovieDetail$Query$MoviesFromJson(json);

  MovieDetail$Query$Movies$Movie movie;

  @override
  List<Object> get props => [movie];
  Map<String, dynamic> toJson() => _$MovieDetail$Query$MoviesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetail$Query with EquatableMixin {
  MovieDetail$Query();

  factory MovieDetail$Query.fromJson(Map<String, dynamic> json) =>
      _$MovieDetail$QueryFromJson(json);

  MovieDetail$Query$Movies movies;

  @override
  List<Object> get props => [movies];
  Map<String, dynamic> toJson() => _$MovieDetail$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovieDetailArguments extends JsonSerializable with EquatableMixin {
  MovieDetailArguments({this.movieId});

  factory MovieDetailArguments.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailArgumentsFromJson(json);

  final String movieId;

  @override
  List<Object> get props => [movieId];
  Map<String, dynamic> toJson() => _$MovieDetailArgumentsToJson(this);
}

class MovieDetailQuery
    extends GraphQLQuery<MovieDetail$Query, MovieDetailArguments> {
  MovieDetailQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'MovieDetail'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'movieId')),
              type:
                  NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'movies'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'movie'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'id'),
                          value: VariableNode(name: NameNode(value: 'movieId')))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'originalTitle'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'poster'),
                          alias: null,
                          arguments: [
                            ArgumentNode(
                                name: NameNode(value: 'size'),
                                value: EnumValueNode(
                                    name: NameNode(value: 'Original')))
                          ],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'backdrop'),
                          alias: null,
                          arguments: [
                            ArgumentNode(
                                name: NameNode(value: 'size'),
                                value: EnumValueNode(
                                    name: NameNode(value: 'Original')))
                          ],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'overview'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'credits'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'cast'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'character'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'id'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'value'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'id'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'name'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(
                                                value: 'profilePicture'),
                                            alias: null,
                                            arguments: [
                                              ArgumentNode(
                                                  name: NameNode(value: 'size'),
                                                  value: EnumValueNode(
                                                      name: NameNode(
                                                          value: 'Original')))
                                            ],
                                            directives: [],
                                            selectionSet: null)
                                      ]))
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'MovieDetail';

  @override
  final MovieDetailArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MovieDetail$Query parse(Map<String, dynamic> json) =>
      MovieDetail$Query.fromJson(json);
}
