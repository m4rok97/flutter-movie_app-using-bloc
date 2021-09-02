import 'package:dartz/dartz.dart';
import 'package:test_movie_app/domain/entities/app_error.dart';
import 'package:test_movie_app/domain/entities/movie_detail_entity.dart';
import 'package:test_movie_app/domain/entities/movie_detail_params.dart';
import 'package:test_movie_app/domain/entities/movie_entity.dart';
import 'package:test_movie_app/domain/entities/no_params.dart';
import 'package:test_movie_app/domain/repositories/movie_repository.dart';
import 'package:test_movie_app/domain/use_cases/use_case.dart';

class GetMovieDetail extends UseCase<MovieDetailEntity, MovieDetailParams> {
  final MovieRepositoryContract repository;

  GetMovieDetail(this.repository);

  @override
  Future<Either<AppError, MovieDetailEntity>> call(
      MovieDetailParams params) async {
    return await repository.getMovieDetail(params.id);
  }
}
