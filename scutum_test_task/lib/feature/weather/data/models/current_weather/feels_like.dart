import 'package:freezed_annotation/freezed_annotation.dart';

part 'feels_like.freezed.dart';
part 'feels_like.g.dart';

@freezed
class FeelsLike with _$FeelsLike {
  factory FeelsLike({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
}
