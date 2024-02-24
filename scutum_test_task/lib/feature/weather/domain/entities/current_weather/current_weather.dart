import 'current.dart';
import 'daily.dart';
import 'hourly.dart';
import 'minutely.dart';

class CurrentWeatherEntity {
  final double? lat;
  final double? lon;
  final String? timezone;
  final int? timezoneOffset;
  final CurrentEntity? current;
  final List<MinutelyEntity>? minutely;
  final List<HourlyEntity>? hourly;
  final List<DailyEntity>? daily;

  const CurrentWeatherEntity({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.minutely,
    this.hourly,
    this.daily,
  });
}
