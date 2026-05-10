import 'package:flutter/material.dart';
import 'package:weather_app/utils/weather_theme.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  var primaryColor = WeatherTheme.getThemeColor(null);
  void updateTheme(MaterialColor color) {
    setState(() {
      primaryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(updateTheme: updateTheme),
    );
  }
}
