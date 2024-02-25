import 'package:dartz/dartz.dart';
import 'package:scutum_test_task/core/domain/entities/failure.dart';

import '../entities/current_weather/current.dart';

abstract class WeatherRepository {
  Future<Either<Failure, CurrentEntity>> getCurrentWeather();

  Future<Either<Failure, String?>> getCurrentTimezone();
}
