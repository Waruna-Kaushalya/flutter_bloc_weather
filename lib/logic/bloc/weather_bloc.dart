import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';

import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';
import 'package:flutter_weather_latest_simple_version/data/reposotories/weather_reposotory.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherReposotory weatherReposotory;
  WeatherBloc(
    this.weatherReposotory,
  ) : super(const WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      //need to check which event is comming
      if (event is GetWeather) {
        try {
          emit(const WeatherLoading());
          final weather =
              await weatherReposotory.getWeatherLocationData(event.cityName);
          emit(WeatherLoaded(weather: weather, cityName: event.cityName));
        } catch (e) {
          final failure = e as Failure;
          emit(WeatherError(errorMsg: failure.message));
        }
      }
    });
  }
}
