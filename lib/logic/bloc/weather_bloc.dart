import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';
import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';

import 'package:flutter_weather_latest_simple_version/data/reposotories/weather_reposotory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.dart';
part 'weather_state.dart';

part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherReposotory weatherReposotory;
  WeatherBloc(
    this.weatherReposotory,
  ) : super(WeatherState(
          stateStatus: WeatherStateStatus.initial,
          cityName: "",
          temperatureUnitsState: false,
          temperatureUnits: TemperatureUnits.fahrenheit,
        )) {
    on<WeatherEvent>((event, emit) async {
      //need to check which event is comming

      if (event is GetWeather) {
        try {
          emit(state.copyWith(stateStatus: WeatherStateStatus.loading));

          final weather = await weatherReposotory
              .getWeatherLocationData(event.cityName.totrimLower());

          // final cityname = weather.cityname;
          final temp = weather.main.temperature;

          final units = state.temperatureUnits.isCelsius
              ? TemperatureUnits.celsius
              : TemperatureUnits.fahrenheit;

          final temperature =
              units.isCelsius ? temp.toFahrenheitToCelsius() : temp;

          emit(state.copyWith(
            stateStatus: WeatherStateStatus.success,
            cityName: event.cityName.toTrimUpper(),
            temperature: temperature,
            temperatureUnits: units,
          ));
        } catch (e) {
          final failure = e as Failure;
          emit(state.copyWith(
              stateStatus: WeatherStateStatus.failure,
              errorMsg: failure.message));
        }
      }

      if (event is ToggleUnits) {
        final units = event.isTemperatureUnits
            ? TemperatureUnits.celsius
            : TemperatureUnits.fahrenheit;

        final temp = units.isCelsius
            ? state.temperature?.toFahrenheitToCelsius()
            : state.temperature?.toCelsiusToFahrenheit();

        if (state.stateStatus.isSuccess) {
          emit(state.copyWith(
            temperatureUnitsState: event.isTemperatureUnits,
            cityName: state.cityName,
            temperatureUnits: units,
            temperature: temp,
          ));
        }

        if (state.stateStatus.isInitial) {
          emit(state.copyWith(
            temperatureUnitsState: event.isTemperatureUnits,
            // cityName: state.cityName,
            temperatureUnits: units,
            // temperature: temp,
          ));
        }
      }
    });
  }
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on double {
  double toCelsiusToFahrenheit() => (this + 273.15);
  double toFahrenheitToCelsius() => (this - 273.15);
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on String {
  String toTrimUpper() => (trim().toUpperCase());
  String totrimLower() => (trim().toLowerCase());
}
