part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    CurrentWeatherStateModel? currentWeatherStateModel,
  }) = _WeatherState;
}
