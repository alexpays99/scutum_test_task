class Urls {
  Urls._();

  static String base = const String.fromEnvironment('BASE_URL').toString();
  static String user = '$base/user';
}
