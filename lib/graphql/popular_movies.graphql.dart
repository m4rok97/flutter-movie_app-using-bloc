// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'popular_movies.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie
    with EquatableMixin {
  PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie();

  factory PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie.fromJson(
          Map<String, dynamic> json) =>
      _$PopularMovies$Query$Movies$MovieConnection$MovieEdge$MovieFromJson(
          json);

  String id;

  int budget;

  String originalTitle;

  String poster;

  String backdrop;

  @override
  List<Object> get props => [id, budget, originalTitle, poster, backdrop];
  Map<String, dynamic> toJson() =>
      _$PopularMovies$Query$Movies$MovieConnection$MovieEdge$MovieToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query$Movies$MovieConnection$MovieEdge with EquatableMixin {
  PopularMovies$Query$Movies$MovieConnection$MovieEdge();

  factory PopularMovies$Query$Movies$MovieConnection$MovieEdge.fromJson(
          Map<String, dynamic> json) =>
      _$PopularMovies$Query$Movies$MovieConnection$MovieEdgeFromJson(json);

  PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie node;

  @override
  List<Object> get props => [node];
  Map<String, dynamic> toJson() =>
      _$PopularMovies$Query$Movies$MovieConnection$MovieEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query$Movies$MovieConnection$PageInfo with EquatableMixin {
  PopularMovies$Query$Movies$MovieConnection$PageInfo();

  factory PopularMovies$Query$Movies$MovieConnection$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$PopularMovies$Query$Movies$MovieConnection$PageInfoFromJson(json);

  bool hasNextPage;

  String endCursor;

  @override
  List<Object> get props => [hasNextPage, endCursor];
  Map<String, dynamic> toJson() =>
      _$PopularMovies$Query$Movies$MovieConnection$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query$Movies$MovieConnection with EquatableMixin {
  PopularMovies$Query$Movies$MovieConnection();

  factory PopularMovies$Query$Movies$MovieConnection.fromJson(
          Map<String, dynamic> json) =>
      _$PopularMovies$Query$Movies$MovieConnectionFromJson(json);

  List<PopularMovies$Query$Movies$MovieConnection$MovieEdge> edges;

  int totalCount;

  PopularMovies$Query$Movies$MovieConnection$PageInfo pageInfo;

  @override
  List<Object> get props => [edges, totalCount, pageInfo];
  Map<String, dynamic> toJson() =>
      _$PopularMovies$Query$Movies$MovieConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query$Movies with EquatableMixin {
  PopularMovies$Query$Movies();

  factory PopularMovies$Query$Movies.fromJson(Map<String, dynamic> json) =>
      _$PopularMovies$Query$MoviesFromJson(json);

  PopularMovies$Query$Movies$MovieConnection popular;

  @override
  List<Object> get props => [popular];
  Map<String, dynamic> toJson() => _$PopularMovies$Query$MoviesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PopularMovies$Query with EquatableMixin {
  PopularMovies$Query();

  factory PopularMovies$Query.fromJson(Map<String, dynamic> json) =>
      _$PopularMovies$QueryFromJson(json);

  PopularMovies$Query$Movies movies;

  @override
  List<Object> get props => [movies];
  Map<String, dynamic> toJson() => _$PopularMovies$QueryToJson(this);
}

class PopularMoviesQuery
    extends GraphQLQuery<PopularMovies$Query, JsonSerializable> {
  PopularMoviesQuery();

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
                    name: NameNode(value: 'popular'),
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
  final String operationName = 'popular_movies';

  @override
  List<Object> get props => [document, operationName];
  @override
  PopularMovies$Query parse(Map<String, dynamic> json) =>
      PopularMovies$Query.fromJson(json);
}
