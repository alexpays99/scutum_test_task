// import 'package:dartz/dartz.dart';

// import '../../../../core/domain/entities/failure.dart';
// import '../../../../core/domain/usecases/usecase.dart';
// import '../repository/weather_repository.dart';

// class GetWeatherIconUseCase extends UseCase<String, String, NoParams> {
//   GetWeatherIconUseCase({required this.weatherRepository});

//   final WeatherRepository weatherRepository;

//   @override
//   Future<Either<Failure, String>> call(String params, NoParams params1) async {
//     final responce = await weatherRepository.getWeatherIcon(params);

//     return responce.fold(
//       (l) => left(l),
//       (r) => right(r),
//     );
//   }
// }
