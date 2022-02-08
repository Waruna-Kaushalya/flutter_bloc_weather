import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';

import 'package:flutter_weather_latest_simple_version/data/reposotories/weather_reposotory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

          final cityname = weather.cityname;
          final temp = weather.main.temperature;

          emit(WeatherLoaded(
            temp: temp.toKelvintoCelsius(),
            cityName: event.cityName.toTrimUpper(),
          ));
        } catch (e) {
          final failure = e as Failure;
          emit(WeatherError(errorMsg: failure.message));
        }
      }
    });
  }
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on double {
  double toCelsiustoFahrenheit() => ((this * 9 / 5) + 32);
  double toKelvintoCelsius() => (this - 273.15);
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on String {
  String toTrimUpper() => (trim().toUpperCase());
  String totrimLower() => (trim().toLowerCase());
}
