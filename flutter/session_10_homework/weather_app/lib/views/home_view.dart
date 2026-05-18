import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/utils/build_app_bar.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/searched_weather_body.dart';

class HomeView extends StatelessWidget {
  final WeatherModel? weatherModel;
  const HomeView({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Weather App',
        color: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherBody()
          : SearchedWeatherBody(weather: weatherModel!),
    );
  }
}
