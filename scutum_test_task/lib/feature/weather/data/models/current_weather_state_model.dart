import 'package:scutum_test_task/core/domain/entities/failure.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/current.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/daily.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/weather.dart';

enum CurrentWeatherState {
  initial,
  loading,
  loaded,
  error,
}

class CurrentWeatherStateModel {
  CurrentWeatherStateModel({
    this.value,
    this.weather,
    this.dailyWeatherList,
    this.timezone,
    this.currentState,
    this.failure,
  });

  CurrentEntity? value;
  WeatherEntity? weather;
  List<DailyEntity>? dailyWeatherList;
  String? timezone;
  CurrentWeatherState? currentState = CurrentWeatherState.initial;
  Failure? failure;
}
