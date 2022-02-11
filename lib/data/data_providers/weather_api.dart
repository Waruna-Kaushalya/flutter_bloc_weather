import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutter_weather_latest_simple_version/data/models/weather.dart';

import '../models/failure.dart';

class WeatherApi {
  //base url. url end point
  static const String _baseUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=";

  //Api key
  static const String _apiKey = "01cc8328d04c516c03c84af29cd9c0d9";
  final http.Client _client;

  WeatherApi({http.Client? client}) : _client = client ?? http.Client();

  //Fectch weather data from api
  Future<Weather> getWeatherRawData(String cityName) async {
    final url = '$_baseUrl$cityName&appid=$_apiKey';

    final response = await _client.post(
      Uri.parse(url),
    );

    if (response.statusCode == 404) {
      throw const Failure(message: "City not found");
    }

    if (response.statusCode != 200) {
      throw const Failure(message: "Something went wrong");
    }

    //decode jason response body and map body data
    Map<String, dynamic> weatherMap = jsonDecode(response.body);

    if (weatherMap.isEmpty) {
      throw const Failure(message: "message");
    }

    //Map cityname and temp using weather model and return weather data
    var weather = Weather.fromJson(weatherMap);

    return weather;
  }

  void dispose() {
    _client.close();
  }
}
