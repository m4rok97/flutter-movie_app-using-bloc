// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'now_playing_movies.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie
    with EquatableMixin {
  NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie();

  factory NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie.fromJson(
          Map<String, dynamic> json) =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$MovieFromJson(
          json);

  String id;

  int budget;

  String originalTitle;

  String poster;

  String backdrop;

  @override
  List<Object> get props => [id, budget, originalTitle, poster, backdrop];
  Map<String, dynamic> toJson() =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$MovieToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge
    with EquatableMixin {
  NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge();

  factory NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge.fromJson(
          Map<String, dynamic> json) =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdgeFromJson(json);

  NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie node;

  @override
  List<Object> get props => [node];
  Map<String, dynamic> toJson() =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query$Movies$MovieConnection$PageInfo
    with EquatableMixin {
  NowPlayingMovies$Query$Movies$MovieConnection$PageInfo();

  factory NowPlayingMovies$Query$Movies$MovieConnection$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$PageInfoFromJson(json);

  bool hasNextPage;

  String endCursor;

  @override
  List<Object> get props => [hasNextPage, endCursor];
  Map<String, dynamic> toJson() =>
      _$NowPlayingMovies$Query$Movies$MovieConnection$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query$Movies$MovieConnection with EquatableMixin {
  NowPlayingMovies$Query$Movies$MovieConnection();

  factory NowPlayingMovies$Query$Movies$MovieConnection.fromJson(
          Map<String, dynamic> json) =>
      _$NowPlayingMovies$Query$Movies$MovieConnectionFromJson(json);

  List<NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge> edges;

  int totalCount;

  NowPlayingMovies$Query$Movies$MovieConnection$PageInfo pageInfo;

  @override
  List<Object> get props => [edges, totalCount, pageInfo];
  Map<String, dynamic> toJson() =>
      _$NowPlayingMovies$Query$Movies$MovieConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query$Movies with EquatableMixin {
  NowPlayingMovies$Query$Movies();

  factory NowPlayingMovies$Query$Movies.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingMovies$Query$MoviesFromJson(json);

  NowPlayingMovies$Query$Movies$MovieConnection nowPlaying;

  @override
  List<Object> get props => [nowPlaying];
  Map<String, dynamic> toJson() => _$NowPlayingMovies$Query$MoviesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NowPlayingMovies$Query with EquatableMixin {
  NowPlayingMovies$Query();

  factory NowPlayingMovies$Query.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingMovies$QueryFromJson(json);

  NowPlayingMovies$Query$Movies movies;

  @override
  List<Object> get props => [movies];
  Map<String, dynamic> toJson() => _$NowPlayingMovies$QueryToJson(this);
}

class NowPlayingMoviesQuery
    extends GraphQLQuery<NowPlayingMovies$Query, JsonSerializable> {
  NowPlayingMoviesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: null,
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'movies'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'nowPlaying'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'first'),
                          value: IntValueNode(value: '10'))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'edges'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'node'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'id'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'budget'),
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
                                                name: NameNode(
                                                    value: 'Original')))
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
                                                name: NameNode(
                                                    value: 'Original')))
                                      ],
                                      directives: [],
                                      selectionSet: null)
                                ]))
                          ])),
                      FieldNode(
                          name: NameNode(value: 'totalCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'pageInfo'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'hasNextPage'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'endCursor'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'now_playing_movies';

  @override
  List<Object> get props => [document, operationName];
  @override
  NowPlayingMovies$Query parse(Map<String, dynamic> json) =>
      NowPlayingMovies$Query.fromJson(json);
}
