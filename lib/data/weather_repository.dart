import 'package:weather/data/weather_api_client.dart';
import 'package:weather/locator.dart';
import 'package:weather/models/weather.dart';

class WeatherRepository {

  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  // ignore: missing_return
  Future<Weather> getWeather(String sehir) async {
    
    final int sehirID = await weatherApiClient.getLocationID(sehir);
    return await weatherApiClient.getWeather(sehirID);
  }

}