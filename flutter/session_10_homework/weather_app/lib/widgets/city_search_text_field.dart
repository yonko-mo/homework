import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/fetch_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/fetch_weather_states.dart';

class CitySearchTextField extends StatelessWidget {
  const CitySearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    String cityName = '';
    return BlocListener<FetchWeatherCubit, FetchWeatherState>(
      listener: (context, state) {
        if (state is FetchWeatherFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              duration: const Duration(seconds: 4),
            ),
          );
        }
        if (state is FetchWeatherLoadedState) {
          Navigator.pop(context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onChanged: (value) {
              cityName = value;
            },
            onSubmitted: (value) {
              var getWeatherCubit = BlocProvider.of<FetchWeatherCubit>(context);
              getWeatherCubit.fetchWeather(cityName: value);
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  cityName;
                },
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 30,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Search',
              hintText: 'Enter City Name',
            ),
          ),
        ),
      ),
    );
  }
}
