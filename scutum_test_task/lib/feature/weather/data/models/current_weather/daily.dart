import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/daily.dart';

import 'temp.dart';
import 'weather.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily extends DailyEntity with _$Daily {
  Daily._();

  factory Daily({
    int? dt,
    int? sunrise,
    int? sunset,
    int? moonrise,
    int? moonset,
    @JsonKey(name: 'moon_phase') double? moonPhase,
    String? summary,
    Temp? temp,
    int? pressure,
    int? humidity,
    @JsonKey(name: 'dew_point') double? dewPoint,
    @JsonKey(name: 'wind_speed') double? windSpeed,
    @JsonKey(name: 'wind_deg') int? windDeg,
    @JsonKey(name: 'wind_gust') double? windGust,
    List<Weather>? weather,
    int? clouds,
    int? pop,
    double? uvi,
    double? rain,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  DailyEntity get entity => DailyEntity(
        dt: dt,
        sunrise: sunrise,
        sunset: sunset,
        moonrise: moonrise,
        moonPhase: moonPhase,
        summary: summary,
        temp: temp,
        pressure: pressure,
        humidity: humidity,
        dewPoint: dewPoint,
        windSpeed: windSpeed,
        windGust: windGust,
        weather: weather,
        clouds: clouds,
        pop: pop,
        uvi: uvi,
        rain: rain,
      );
}
