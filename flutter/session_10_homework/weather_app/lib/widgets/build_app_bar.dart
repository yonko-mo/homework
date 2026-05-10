import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

AppBar buildAppBar({
  List<Widget>? actions,
  required String title,
  WeatherModel? weatherModel,
  Color? color,
}) {
  return AppBar(
    backgroundColor: color,
    foregroundColor: Colors.white,
    title: const Text('Weather App'),
    actions: actions,
  );
}
