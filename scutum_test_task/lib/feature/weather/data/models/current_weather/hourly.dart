import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/hourly.dart';

import 'weather.dart';

part 'hourly.freezed.dart';
part 'hourly.g.dart';

@freezed
class Hourly extends HourlyEntity with _$Hourly {
  factory Hourly({
    int? dt,
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
    @JsonKey(name: 'wind_gust') double? windGust,
    List<Weather>? weather,
    int? pop,
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}
