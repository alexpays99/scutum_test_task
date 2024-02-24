import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/current.dart';

import 'weather.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
  const Current._();

  factory Current({
    int? dt,
    int? sunrise,
    int? sunset,
    double? temp,
    @JsonKey(name: 'feels_like') double? feelsLike,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'dew_point') double? dewPoint,
    double? uvi,
    int? clouds,
    int? visibility,
    @JsonKey(name: 'wind_speed') double? windSpeed,
    @JsonKey(name: 'wind_deg') int? windDeg,
    List<Weather>? weather,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  CurrentEntity get entity => CurrentEntity(
        dt: dt,
        sunrise: sunrise,
        sunset: sunset,
        temp: temp,
        feelsLike: feelsLike,
        pressure: pressure,
        humidity: humidity,
        dewPoint: dewPoint,
        uvi: uvi,
        clouds: clouds,
        visibility: visibility,
        windSpeed: windSpeed,
        windDeg: windDeg,
        weather: weather,
      );
}
