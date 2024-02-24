import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scutum_test_task/feature/weather/domain/entities/current_weather/minutely.dart';

part 'minutely.freezed.dart';
part 'minutely.g.dart';

@freezed
class Minutely extends MinutelyEntity with _$Minutely {
  const Minutely._();

  factory Minutely({
    int? dt,
    int? precipitation,
  }) = _Minutely;

  factory Minutely.fromJson(Map<String, dynamic> json) =>
      _$MinutelyFromJson(json);
}
