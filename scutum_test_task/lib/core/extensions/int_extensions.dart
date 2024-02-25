import 'package:intl/intl.dart';

extension UnixUtcTimeConversion on int {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this * 1000, isUtc: true);
  }

  String toFormattedString(String formatPattern) {
    DateTime dateTime = toDateTime();
    return DateFormat(formatPattern).format(dateTime);
  }
}
