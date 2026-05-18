import 'package:weather_app/models/weather_model.dart';

class FetchWeatherState {}

class FetchWeatherInitialState extends FetchWeatherState {}

class FetchWeatherLoadingState extends FetchWeatherState {}

class FetchWeatherLoadedState extends FetchWeatherState {
  final WeatherModel weatherModel;
  FetchWeatherLoadedState({required this.weatherModel});
}

class FetchWeatherFailureState extends FetchWeatherState {
  final String errorMessage;
  FetchWeatherFailureState({required this.errorMessage});
}
