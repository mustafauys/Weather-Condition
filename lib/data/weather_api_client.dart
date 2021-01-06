import 'package:http/http.dart' as http;

class WeatherApiClient{

  static const basUrl = "http://www.metaweather.com";
  final http.Client httpClient = http.Client();

}