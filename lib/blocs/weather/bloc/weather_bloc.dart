import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:weather/data/weather_repository.dart';
import 'package:weather/locator.dart';
import 'package:weather/models/weather.dart';
import 'bloc.dart';


class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final WeatherRepository weatherRepository = locator<WeatherRepository>();

  @override
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is FetchWeatherEvent) {
      
      yield WeatherLoadingState();
      try {
        WeatherRepository weatherRepository = WeatherRepository();
        final Weather getirilenWeather = await weatherRepository.getWeather(event.sehirAdi);
        yield WeatherLoadedState(weather: getirilenWeather);
      } catch(_){
        yield WeatherErrorState();
      }
    }
    else if (event is RefreshWeatherEvent) {
      
      yield WeatherLoadingState();
      try {
        WeatherRepository weatherRepository = WeatherRepository();
        // ignore: unused_local_variable
        final Weather getirilenWeather = await weatherRepository.getWeather(event.sehirAdi);
      } catch(_){
        yield currentState;
      }
    }
  }
}
