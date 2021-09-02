// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
    _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$PersonFromJson(
        Map<String, dynamic> json) {
  return MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..profilePicture = json['profilePicture'] as String;
}

Map<String, dynamic>
    _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$PersonToJson(
            MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'profilePicture': instance.profilePicture,
        };

MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson
    _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPersonFromJson(
        Map<String, dynamic> json) {
  return MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson()
    ..character = json['character'] as String
    ..id = json['id'] as String
    ..value = json['value'] == null
        ? null
        : MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson$Person
            .fromJson(json['value'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPersonToJson(
            MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson
                instance) =>
        <String, dynamic>{
          'character': instance.character,
          'id': instance.id,
          'value': instance.value?.toJson(),
        };

MovieDetail$Query$Movies$Movie$ICreditsWithPerson
    _$MovieDetail$Query$Movies$Movie$ICreditsWithPersonFromJson(
        Map<String, dynamic> json) {
  return MovieDetail$Query$Movies$Movie$ICreditsWithPerson()
    ..cast = (json['cast'] as List)
        ?.map((e) => e == null
            ? null
            : MovieDetail$Query$Movies$Movie$ICreditsWithPerson$CastCreditWithPerson
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..typeName = json['__typename'] as String;
}

Map<String, dynamic> _$MovieDetail$Query$Movies$Movie$ICreditsWithPersonToJson(
        MovieDetail$Query$Movies$Movie$ICreditsWithPerson instance) =>
    <String, dynamic>{
      'cast': instance.cast?.map((e) => e?.toJson())?.toList(),
      '__typename': instance.typeName,
    };

MovieDetail$Query$Movies$Movie _$MovieDetail$Query$Movies$MovieFromJson(
    Map<String, dynamic> json) {
  return MovieDetail$Query$Movies$Movie()
    ..id = json['id'] as String
    ..originalTitle = json['originalTitle'] as String
    ..poster = json['poster'] as String
    ..backdrop = json['backdrop'] as String
    ..overview = json['overview'] as String
    ..releaseDate = json['releaseDate'] as String
    ..credits = json['credits'] == null
        ? null
        : MovieDetail$Query$Movies$Movie$ICreditsWithPerson.fromJson(
            json['credits'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovieDetail$Query$Movies$MovieToJson(
        MovieDetail$Query$Movies$Movie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalTitle': instance.originalTitle,
      'poster': instance.poster,
      'backdrop': instance.backdrop,
      'overview': instance.overview,
      'releaseDate': instance.releaseDate,
      'credits': instance.credits?.toJson(),
    };

MovieDetail$Query$Movies _$MovieDetail$Query$MoviesFromJson(
    Map<String, dynamic> json) {
  return MovieDetail$Query$Movies()
    ..movie = json['movie'] == null
        ? null
        : MovieDetail$Query$Movies$Movie.fromJson(
            json['movie'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovieDetail$Query$MoviesToJson(
        MovieDetail$Query$Movies instance) =>
    <String, dynamic>{
      'movie': instance.movie?.toJson(),
    };

MovieDetail$Query _$MovieDetail$QueryFromJson(Map<String, dynamic> json) {
  return MovieDetail$Query()
    ..movies = json['movies'] == null
        ? null
        : MovieDetail$Query$Movies.fromJson(
            json['movies'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovieDetail$QueryToJson(MovieDetail$Query instance) =>
    <String, dynamic>{
      'movies': instance.movies?.toJson(),
    };

MovieDetailArguments _$MovieDetailArgumentsFromJson(Map<String, dynamic> json) {
  return MovieDetailArguments(
    movieId: json['movieId'] as String,
  );
}

Map<String, dynamic> _$MovieDetailArgumentsToJson(
        MovieDetailArguments instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
    };
