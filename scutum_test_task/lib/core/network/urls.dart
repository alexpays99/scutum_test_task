class Urls {
  const Urls._();

  static const String baseUrl = "https://api.openweathermap.org";

  static const String baseEndpoint = "data/3.0/onecall";

  static const String lattitude = "50.450001";

  static const String longitude = "30.523333";

  static const String appId = String.fromEnvironment('APP_ID');

  static const String requrestUrl =
      "$baseUrl/$baseEndpoint?lat=$lattitude&lon=$longitude&units=metric&appid=$appId";
}
