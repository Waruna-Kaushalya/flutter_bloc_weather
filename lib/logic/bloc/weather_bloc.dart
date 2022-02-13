import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';
import 'package:flutter_weather_latest_simple_version/repository/models/weather.dart';

import 'package:flutter_weather_latest_simple_version/repository/api_weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_event.dart';
part 'weather_state.dart';

part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final ApiWeatherRepository weatherRepository;
  WeatherBloc(
    this.weatherRepository,
  ) : super(WeatherState(
          stateStatus: WeatherStateStatus.initial,
          cityName: "",
          isTemperatureUnitsState: false,
          temperatureUnits: TemperatureUnits.kelvin,
        )) {
    on<WeatherEvent>((event, emit) async {
      //need to check which event is comming

      /// [GetWeather] event
      if (event is GetWeather) {
        /// [catch] errors and exception
        try {
          /// emit loading state
          emit(state.copyWith(stateStatus: WeatherStateStatus.loading));

          /// fetch [weather] from [weatherReposotory]
          final weather = await weatherRepository
              .getWeatherLocationData(event.cityName.totrimLower());

          /// get temperature
          final temp = weather.temperature;

          /// check which [unit] is selected
          /// [List<bool> get selections = [true, false] means
          /// selected unit is [Kelvin]
          final units = state.selections[0]
              ? TemperatureUnits.kelvin
              : TemperatureUnits.celsius;

          /// if selected [units.isCelsius] then convert Kelvin To Celsius
          /// if selected [units.Kelvin] then no need to convert
          /// becase weather api gives unit as kelvin
          final temperature = units.isCelsius ? temp.toKelvinToCelsius() : temp;

          /// selected unit
          /// [false, true] = celcios is selected
          /// [true, false] = kelvin is selected
          List<bool> selections =
              units.isCelsius ? [false, true] : [true, false];

          /// emit weather [success] state
          emit(state.copyWith(
            stateStatus: WeatherStateStatus.success,
            cityName: event.cityName.toTrimUpper(),
            temperature: temperature,
            temperatureUnits: units,
            selections: selections,
          ));
        } catch (e) {
          final failure = e as Failure;

          /// emit [failier] state
          /// msg as [failure.message,]
          emit(state.copyWith(
            stateStatus: WeatherStateStatus.failure,
            errorMsg: failure.message,
          ));
        }
        // }
      }

      /// [ToggleUnits] event
      if (event is ToggleUnits) {
        /// check [previos] state and [current] event are equal or not
        /// becase if they are equal then overide same state twise
        /// its effect to temp value
        if (state.selections[0] != event.selections[0]) {
          /// check which [unit] is selected
          /// [List<bool> get selections = [true, false] means
          /// selected unit is [Kelvin]
          final units = event.selections[0]
              ? TemperatureUnits.kelvin
              : TemperatureUnits.celsius;

          /// if selected [units.isCelsius] then convert Kelvin To Celsius
          /// if selected [units.Kelvin] then convert celcios to To Kelvin
          final temperature = units.isCelsius
              ? state.temperature?.toKelvinToCelsius()
              : state.temperature?.toCelsiusToKelvin();

          /// selected unit
          /// [false, true] = celcios is selected
          /// [true, false] = kelvin is selected
          List<bool> selections =
              units.isCelsius ? [false, true] : [true, false];

          /// emit state when [isInitial] or [isSuccess]
          if (state.stateStatus.isInitial || state.stateStatus.isSuccess) {
            emit(state.copyWith(
              isTemperatureUnitsState: event.isTemperatureUnits,
              cityName: state.cityName,
              temperatureUnits: units,
              temperature: temperature,
              selections: selections,
            ));
          }

          /// emit state when [isFailure]
          ///
          if (state.stateStatus.isFailure) {
            emit(state.copyWith(
              isTemperatureUnitsState: event.isTemperatureUnits,
              temperatureUnits: units,
              errorMsg: "",
              selections: selections,
            ));
          }
        }
      }
    });
  }
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on double {
  double toCelsiusToKelvin() => (this + 273.15);
  double toKelvinToCelsius() => (this - 273.15);
}

/// [extension] for convert celcious to kelvin and kelvin to celcious
extension on String {
  String toTrimUpper() => (trim().toUpperCase());
  String totrimLower() => (trim().toLowerCase());
}
