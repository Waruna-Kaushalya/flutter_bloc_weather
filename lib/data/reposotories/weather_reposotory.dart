import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_weather_latest_simple_version/data/data_providers/weather_api.dart';
import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';
import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';
import 'package:http/http.dart';

abstract class WeatherReposotoryClass {
  final WeatherApi api;

  WeatherReposotoryClass({required this.api});
  Future<dynamic> getWeatherLocationData(String cityName);
}

class WeatherReposotory implements WeatherReposotoryClass {
  //api object use for fetch data from api
  @override
  final WeatherApi api;
  WeatherReposotory({required this.api});

  //getWeatherLocationData function is asyncrones method and using fetch data and return data to cubit
  @override
  Future<Weather> getWeatherLocationData(String cityName) async {
    try {
      //rawWeather get response from api using user enter city name
      final Response rawWeather = await api.getWeatherRawData(cityName);
      if (rawWeather.statusCode == 200) {
        //decode jason response body and map body data
        Map<String, dynamic> weatherMap = jsonDecode(rawWeather.body);
        //Map cityname and temp using weather model and return weather data
        var weather = Weather.fromJson(weatherMap);
        return weather;
      } else {
        throw const Failure(message: '404');
      }
    } on SocketException {
      throw const Failure(message: '400');
    } catch (e) {
      throw const Failure(message: '405');
    }
  }
}

// //! second

// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_weather_latest_simple_version/data/data_providers/weather_api.dart';
// import 'package:flutter_weather_latest_simple_version/data/models/failure.dart';
// import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';
// import 'package:http/http.dart';

// // abstract class WeatherReposotoryClass {
// //   final WeatherApi api;

// //   WeatherReposotoryClass({required this.api});
// //   Future<dynamic> getWeatherLocationData(String cityName);
// // }

// // class WeatherReposotory implements WeatherReposotoryClass {
// //   //api object use for fetch data from api
// //   @override
// //   final WeatherApi api;
// //   WeatherReposotory({required this.api});

// //getWeatherLocationData function is asyncrones method and using fetch data and return data to cubit
// // @override
// final WeatherApi api = WeatherApi();
// Future<dynamic> getWeatherLocationData(String cityName) async {
//   try {
//     //rawWeather get response from api using user enter city name
//     final Response rawWeather = await api.getWeatherRawData(cityName);
//     if (rawWeather.statusCode == 200) {
//       //! old
//       // //decode jason response body and map body data
//       // Map<String, dynamic> weatherMap = jsonDecode(rawWeather.body);
//       // //Map cityname and temp using weather model and return weather data
//       // var weather = Weather.fromJson(weatherMap);
//       // return weather;

//       //! new
//       return compute(parsePhotos, rawWeather.body);
//     } else {
//       throw const Failure(message: '404');
//     }
//   } on SocketException {
//     throw const Failure(message: '400');
//   } catch (e) {
//     throw const Failure(message: '405');
//   }
// }

// //  return compute(bcd.parsePhotos, response.body);

// Weather parsePhotos(String responseBody) {
//   //decode jason response body and map body data
//   Map<String, dynamic> weatherMap = jsonDecode(responseBody);
//   // final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//   var weather = Weather.fromJson(weatherMap);

//   return weather;
// }
// // }
