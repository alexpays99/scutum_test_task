import 'package:dartz/dartz.dart';

import 'package:scutum_test_task/core/domain/entities/failure.dart';

import '../../domain/entities/current_weather/current.dart';
import '../../domain/repository/weather_repository.dart';
import '../datasource/remote_datasource.dart';

class TasksRepositoryImpl implements WeatherRepository {
  TasksRepositoryImpl(this._remoteDataSource);

  final RemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, CurrentEntity>> getCurrentWeather() async {
    final responce = await _remoteDataSource.getCurrentWeather();
    return responce.fold(
      (l) => left(l),
      (r) => right(r.entity),
    );
  }

  @override
  Future<Either<Failure, String?>> getCurrentTimezone() async {
    final responce = await _remoteDataSource.getCurrentTimezone();
    return responce.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
