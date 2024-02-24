class Urls {
  Urls._();

  static String baseUrl = const String.fromEnvironment('BASE_URL').toString();

  static String baseEndpoint =
      const String.fromEnvironment('BASE_ENDPOINT').toString();

  static String lattitude = const String.fromEnvironment('LAT').toString();

  static String longitude = const String.fromEnvironment('LON').toString();

  static String appId = const String.fromEnvironment('APP_ID').toString();

  static String requrestUrl =
      '$baseUrl$baseEndpoint?lat=$lattitude&lon=$longitude&appid=$appId';
}
