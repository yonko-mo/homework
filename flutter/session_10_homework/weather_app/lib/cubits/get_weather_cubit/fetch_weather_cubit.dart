import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/fetch_weather_states.dart';
import 'package:weather_app/models/main_exceptions.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class FetchWeatherCubit extends Cubit<FetchWeatherState> {
  FetchWeatherCubit() : super(FetchWeatherInitialState());
  final WeatherService weatherService = WeatherService();
  WeatherModel? weatherModel;
  void fetchWeather({required String cityName}) async {
    emit(FetchWeatherLoadingState());
    try {
      weatherModel = await weatherService.getCurrentWeather(cityName: cityName);
      emit(FetchWeatherLoadedState(weatherModel: weatherModel!));
    } on MainException catch (e) {
      emit(FetchWeatherFailureState(errorMessage: e.message));
    }
  }
}
