// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_movies.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie
    _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$MovieFromJson(
        Map<String, dynamic> json) {
  return NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie()
    ..id = json['id'] as String
    ..budget = json['budget'] as int
    ..originalTitle = json['originalTitle'] as String
    ..poster = json['poster'] as String
    ..backdrop = json['backdrop'] as String;
}

Map<String, dynamic>
    _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$MovieToJson(
            NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'budget': instance.budget,
          'originalTitle': instance.originalTitle,
          'poster': instance.poster,
          'backdrop': instance.backdrop,
        };

NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge
    _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdgeFromJson(
        Map<String, dynamic> json) {
  return NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge()
    ..node = json['node'] == null
        ? null
        : NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge$Movie
            .fromJson(json['node'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$NowPlayingMovies$Query$Movies$MovieConnection$MovieEdgeToJson(
            NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge instance) =>
        <String, dynamic>{
          'node': instance.node?.toJson(),
        };

NowPlayingMovies$Query$Movies$MovieConnection$PageInfo
    _$NowPlayingMovies$Query$Movies$MovieConnection$PageInfoFromJson(
        Map<String, dynamic> json) {
  return NowPlayingMovies$Query$Movies$MovieConnection$PageInfo()
    ..hasNextPage = json['hasNextPage'] as bool
    ..endCursor = json['endCursor'] as String;
}

Map<String, dynamic>
    _$NowPlayingMovies$Query$Movies$MovieConnection$PageInfoToJson(
            NowPlayingMovies$Query$Movies$MovieConnection$PageInfo instance) =>
        <String, dynamic>{
          'hasNextPage': instance.hasNextPage,
          'endCursor': instance.endCursor,
        };

NowPlayingMovies$Query$Movies$MovieConnection
    _$NowPlayingMovies$Query$Movies$MovieConnectionFromJson(
        Map<String, dynamic> json) {
  return NowPlayingMovies$Query$Movies$MovieConnection()
    ..edges = (json['edges'] as List)
        ?.map((e) => e == null
            ? null
            : NowPlayingMovies$Query$Movies$MovieConnection$MovieEdge.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..totalCount = json['totalCount'] as int
    ..pageInfo = json['pageInfo'] == null
        ? null
        : NowPlayingMovies$Query$Movies$MovieConnection$PageInfo.fromJson(
            json['pageInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NowPlayingMovies$Query$Movies$MovieConnectionToJson(
        NowPlayingMovies$Query$Movies$MovieConnection instance) =>
    <String, dynamic>{
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
      'totalCount': instance.totalCount,
      'pageInfo': instance.pageInfo?.toJson(),
    };

NowPlayingMovies$Query$Movies _$NowPlayingMovies$Query$MoviesFromJson(
    Map<String, dynamic> json) {
  return NowPlayingMovies$Query$Movies()
    ..nowPlaying = json['nowPlaying'] == null
        ? null
        : NowPlayingMovies$Query$Movies$MovieConnection.fromJson(
            json['nowPlaying'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NowPlayingMovies$Query$MoviesToJson(
        NowPlayingMovies$Query$Movies instance) =>
    <String, dynamic>{
      'nowPlaying': instance.nowPlaying?.toJson(),
    };

NowPlayingMovies$Query _$NowPlayingMovies$QueryFromJson(
    Map<String, dynamic> json) {
  return NowPlayingMovies$Query()
    ..movies = json['movies'] == null
        ? null
        : NowPlayingMovies$Query$Movies.fromJson(
            json['movies'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NowPlayingMovies$QueryToJson(
        NowPlayingMovies$Query instance) =>
    <String, dynamic>{
      'movies': instance.movies?.toJson(),
    };
