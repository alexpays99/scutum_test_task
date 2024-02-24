import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/weather.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather extends WeatherEntity with _$Weather {
  const Weather._();
  factory Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
