import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:scutum_test_task/feature/weather/data/models/current_weather/current.dart';

import '../../../../core/domain/entities/failure.dart';
import '../../../../core/network/urls.dart';

class ApiService {
  ApiService({required this.dio});

  final Dio dio;

  Future<Either<Failure, String?>> getCurrentTimezone() async {
    final response = await dio.get(Urls.requrestUrl.toString());
    if (response.statusCode == 200) {
      final timezone = response.data["timezone"] as String;
      return right(timezone);
    }
    return left(
      const Failure(
        name: 'REMOTE FAILURE:',
        description: 'Unable to get current timezone!',
      ),
    ); //
  }

  Future<Either<Failure, Current>> getCurrentWeather() async {
    Urls.requrestUrl.toString();
    final response = await dio.get(Urls.requrestUrl.toString());

    if (response.statusCode == 200) {
      final curretnWeather =
          Current.fromJson(response.data["current"] as Map<String, dynamic>);
      return right(curretnWeather);
    }

    return left(
      const Failure(
        name: 'REMOTE FAILUREE:',
        description: 'Unable to get current weather!',
      ),
    );
  }
}
