import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/fetch_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/fetch_weather_states.dart';
import 'package:weather_app/utils/get_theme_color.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryColor = Colors.blue;
    return BlocProvider(
      create: (context) => FetchWeatherCubit(),
      child: BlocConsumer<FetchWeatherCubit, FetchWeatherState>(
        listener: (context, state) {
          if (state is FetchWeatherLoadedState) {
            primaryColor = getThemeColor(state.weatherModel.conditionText);
          }
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeView(
              weatherModel: state is FetchWeatherLoadedState
                  ? state.weatherModel
                  : null,
            ),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryColor),
            ),
          );
        },
      ),
    );
  }
}
