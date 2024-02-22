import 'package:logger/logger.dart';

class Log {
  Log._();

  static final Logger _logger = Logger(
    printer: SimplePrinter(colors: false),
    output: InAppLogOutput(),
    filter: FullLogFilter(),
  );

  static Logger get instance => _logger;
}

class InAppLogOutput extends ConsoleOutput {}

class FullLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}
