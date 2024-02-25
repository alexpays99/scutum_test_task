class Urls {
  const Urls._();

  static String weatherImage(String? icon) =>
      'https://openweathermap.org/img/wn/$icon@2x.png';

  static const String defaultWeatherImage =
      'https://openweathermap.org/img/wn/10d@2x.png';

  static const String baseUrl = "https://api.openweathermap.org";

  static const String baseEndpoint = "data/3.0/onecall";

  static const String lattitude = "50.450001";

  static const String longitude = "30.523333";

  static const String appId = String.fromEnvironment('APP_ID');

  static const String requrestUrl =
      "$baseUrl/$baseEndpoint?lat=$lattitude&lon=$longitude&units=metric&appid=$appId";
}
