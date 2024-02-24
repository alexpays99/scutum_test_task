import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/temp.dart';

part 'temp.freezed.dart';
part 'temp.g.dart';

@freezed
class Temp extends TempEntity with _$Temp {
  const Temp._();

  factory Temp({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}
