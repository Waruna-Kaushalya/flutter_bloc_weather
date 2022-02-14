// import 'dart:io';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';

// import 'package:meta/meta.dart';

// import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';
// import 'package:flutter_weather_latest_simple_version/data/reposotories/weather_Repository.dart';

// part 'weather_state.dart';

// class WeatherCubit extends Cubit<WeatherState> {
//   //WeatherRepository dependency for fetch data from Repository
//   final WeatherRepository _weatherRepository;

//   WeatherCubit(this._weatherRepository) : super(const WeatherInitial());

//   //getWeather function use for get weather data from Repository.
//   Future<void> getWeather(String cityName) async {
//     //notify frontend to Weather loading state
//     emit(const WeatherLoading());

//     try {
//       final weather = await _weatherRepository.getWeatherLocationData(cityName);
//       //notify frontend to Weather loaded state with weather data
//       emit(WeatherLoaded(weather, cityName));
//     } on SocketException {
//       //notify frontend to WeatherError state with SocketException
//       emit(const WeatherError("400"));
//     } catch (e) {
//       final failure = e as Failure;
//       //notify frontend to WeatherError state with failure message
//       emit(WeatherError(failure.message));
//     }
//   }
// }
