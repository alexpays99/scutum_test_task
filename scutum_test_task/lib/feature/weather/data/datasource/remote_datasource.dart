import 'package:dartz/dartz.dart';
import 'package:scutum_test_task/feature/weather/data/models/current_weather/current.dart';

import '../../../../core/domain/entities/failure.dart';
import 'api_service.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, Current>> getCurrentWeather();

  Future<Either<Failure, String?>> getCurrentTimezone();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  RemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failure, Current>> getCurrentWeather() async {
    final responce = await _apiService.getCurrentWeather();
    return responce;
  }

  @override
  Future<Either<Failure, String?>> getCurrentTimezone() async {
    final responce = await _apiService.getCurrentTimezone();
    return responce;
  }
}
