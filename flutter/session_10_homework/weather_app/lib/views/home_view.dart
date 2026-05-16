import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/utils/build_app_bar.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/searched_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: BlocListener<GetWeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state is WeatherFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorModel.message),
                duration: const Duration(seconds: 4),
              ),
            );
          }
        },
        child: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitialState) {
              return const NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return SearchedWeatherBody(weather: state.weatherModel);
            } else {
              return const NoWeatherBody();
            }
          },
        ),
      ),
    );
  }
}
