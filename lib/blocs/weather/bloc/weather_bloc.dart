import 'dart:async';
import 'package:bloc/bloc.dart';
import 'bloc.dart';


class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    
  }
}
