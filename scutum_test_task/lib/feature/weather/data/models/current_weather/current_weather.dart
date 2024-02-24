import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/current_weather/current_weather.dart';
import 'current.dart';
import 'daily.dart';
import 'hourly.dart';
import 'minutely.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather extends CurrentWeatherEntity with _$CurrentWeather {
  const CurrentWeather._();

  factory CurrentWeather({
    double? lat,
    double? lon,
    String? timezone,
    @JsonKey(name: 'timezone_offset') int? timezoneOffset,
    // Current? current,
    List<Minutely>? minutely,
    List<Hourly>? hourly,
    List<Daily>? daily,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  CurrentWeatherEntity get entity => CurrentWeatherEntity(
        lat: lat,
        lon: lon,
        timezone: timezone,
        timezoneOffset: timezoneOffset,
        // current: current?.entity,
        minutely: minutely,
        hourly: hourly,
        daily: daily,
      );
}

// extension CurrentExtension on Current {
//   CurrentEntity get toEntity {
//     return CurrentEntity(
//       dt: dt,
//       sunrise: sunrise,
//       sunset: sunset,
//       temp: temp,
//       feelsLike: feelsLike,
//       pressure: pressure,
//       humidity: humidity,
//       dewPoint: dewPoint,
//       uvi: uvi,
//       clouds: clouds,
//       visibility: visibility,
//       windSpeed: windSpeed,
//       windDeg: windDeg,
//       weather: weather,
//     );
//   }
// }
