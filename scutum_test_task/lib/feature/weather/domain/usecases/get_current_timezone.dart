import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repository/weather_repository.dart';

class GetCurrentTimezoneUseCase extends UseCase<String?, NoParams, NoParams> {
  GetCurrentTimezoneUseCase({required this.weatherRepository});

  final WeatherRepository weatherRepository;

  @override
  Future<Either<Failure, String?>> call(
    NoParams params,
    NoParams params1,
  ) async {
    final responce = await weatherRepository.getCurrentTimezone();

    return responce.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
