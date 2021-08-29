// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie
    _$PopularMovies$Query$Movies$MovieConnection$MovieEdge$MovieFromJson(
        Map<String, dynamic> json) {
  return PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie()
    ..id = json['id'] as String
    ..budget = json['budget'] as int
    ..originalTitle = json['originalTitle'] as String
    ..poster = json['poster'] as String
    ..backdrop = json['backdrop'] as String;
}

Map<String,
    dynamic> _$PopularMovies$Query$Movies$MovieConnection$MovieEdge$MovieToJson(
        PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'budget': instance.budget,
      'originalTitle': instance.originalTitle,
      'poster': instance.poster,
      'backdrop': instance.backdrop,
    };

PopularMovies$Query$Movies$MovieConnection$MovieEdge
    _$PopularMovies$Query$Movies$MovieConnection$MovieEdgeFromJson(
        Map<String, dynamic> json) {
  return PopularMovies$Query$Movies$MovieConnection$MovieEdge()
    ..node = json['node'] == null
        ? null
        : PopularMovies$Query$Movies$MovieConnection$MovieEdge$Movie.fromJson(
            json['node'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$PopularMovies$Query$Movies$MovieConnection$MovieEdgeToJson(
            PopularMovies$Query$Movies$MovieConnection$MovieEdge instance) =>
        <String, dynamic>{
          'node': instance.node?.toJson(),
        };

PopularMovies$Query$Movies$MovieConnection$PageInfo
    _$PopularMovies$Query$Movies$MovieConnection$PageInfoFromJson(
        Map<String, dynamic> json) {
  return PopularMovies$Query$Movies$MovieConnection$PageInfo()
    ..hasNextPage = json['hasNextPage'] as bool
    ..endCursor = json['endCursor'] as String;
}

Map<String, dynamic>
    _$PopularMovies$Query$Movies$MovieConnection$PageInfoToJson(
            PopularMovies$Query$Movies$MovieConnection$PageInfo instance) =>
        <String, dynamic>{
          'hasNextPage': instance.hasNextPage,
          'endCursor': instance.endCursor,
        };

PopularMovies$Query$Movies$MovieConnection
    _$PopularMovies$Query$Movies$MovieConnectionFromJson(
        Map<String, dynamic> json) {
  return PopularMovies$Query$Movies$MovieConnection()
    ..edges = (json['edges'] as List)
        ?.map((e) => e == null
            ? null
            : PopularMovies$Query$Movies$MovieConnection$MovieEdge.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..totalCount = json['totalCount'] as int
    ..pageInfo = json['pageInfo'] == null
        ? null
        : PopularMovies$Query$Movies$MovieConnection$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PopularMovies$Query$Movies$MovieConnectionToJson(
        PopularMovies$Query$Movies$MovieConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
      'totalCount': instance.totalCount,
      'pageInfo': instance.pageInfo?.toJson(),
    };

PopularMovies$Query$Movies _$PopularMovies$Query$MoviesFromJson(
    Map<String, dynamic> json) {
  return PopularMovies$Query$Movies()
    ..popular = json['popular'] == null
        ? null
        : PopularMovies$Query$Movies$MovieConnection.fromJson(
            json['popular'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PopularMovies$Query$MoviesToJson(
        PopularMovies$Query$Movies instance) =>
    <String, dynamic>{
      'popular': instance.popular?.toJson(),
    };

PopularMovies$Query _$PopularMovies$QueryFromJson(Map<String, dynamic> json) {
  return PopularMovies$Query()
    ..movies = json['movies'] == null
        ? null
        : PopularMovies$Query$Movies.fromJson(
            json['movies'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PopularMovies$QueryToJson(
        PopularMovies$Query instance) =>
    <String, dynamic>{
      'movies': instance.movies?.toJson(),
    };
