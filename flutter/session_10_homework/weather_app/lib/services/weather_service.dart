import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/error_model.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '22f30be68e4248e79ed172857231410';

  MainException? error;

  WeatherService(this.dio);

  Future<WeatherModel?> getCurrentWeather({
    required String cityName,
    BuildContext? context,
  }) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json',
        queryParameters: {'key': apiKey, 'q': cityName, 'days': 1},
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (dioError) {
      error = MainException.fromDioException(dioError);

      if (context != null) {
        ScaffoldMessenger.of(
          // ignore: use_build_context_synchronously
          context,
        ).showSnackBar(SnackBar(content: Text(error?.message ?? 'Error')));
      }

      return null;
    }
  }
}
