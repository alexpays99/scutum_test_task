import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../entities/current_weather/current.dart';
import '../repository/weather_repository.dart';

class GetCurrentWeatherUseCase
    extends UseCase<CurrentEntity, NoParams, NoParams> {
  GetCurrentWeatherUseCase({required this.weatherRepository});

  final WeatherRepository weatherRepository;

  @override
  Future<Either<Failure, CurrentEntity>> call(
    NoParams params,
    NoParams params1,
  ) async {
    final responce = await weatherRepository.getCurrentWeather();

    return responce.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
