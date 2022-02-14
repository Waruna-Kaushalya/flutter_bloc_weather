import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../../models/models.dart';
import '../api/weather_api.dart';

class OpenweathermapWeatherApi implements WeatherApi {
  //base url. url end point
  static const String _baseUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=";

  //Api key
  static const String _apiKey = "01cc8328d04c516c03c84af29cd9c0d9";
  final http.Client _client;

  OpenweathermapWeatherApi({http.Client? client})
      : _client = client ?? http.Client();

  /// Fectch [weather] data from api
  @override
  Future<Weather> getWeather(String cityName) async {
    final url = '$_baseUrl$cityName&appid=$_apiKey';

    // final response = await _client.post(
    //   Uri.parse(url),
    // );

    // if (response.statusCode == 404) {
    //   throw const Failure(message: "City not found");
    // }

    // if (response.statusCode != 200) {
    //   throw const Failure(message: "Something went wrong");
    // }

    // //decode jason response body and map body data
    // Map<String, dynamic> weatherMap = jsonDecode(response.body);

    // if (weatherMap.isEmpty) {
    //   throw const Failure(message: "message");
    // }

    // //Map cityname and temp using weather model and return weather data
    // var weather = Weather.fromJson(weatherMap);

    // return weather;

    //!

    try {
      final response = await _client.post(
        Uri.parse(url),
      );

      if (response.statusCode == 404) {
        throw const Failure(message: "City not found");
        // throw CityNotFoundFailure();
      }

      if (response.statusCode != 200) {
        throw const Failure(message: "Something went wrong");
        // throw SomethingWentWrong();
      }

      //decode jason response body and map body data
      Map<String, dynamic> weatherMap = jsonDecode(response.body);

      if (weatherMap.isEmpty) {
        throw const Failure(message: "message");
        // throw SomethingWentWrong();
      }

      //Map cityname and temp using weather model and return weather data
      var weather = Weather.fromJson(weatherMap);

      return weather;
    } on SocketException {
      throw const Failure(message: 'No Internet connection 😑');
      // throw InternetConnectionFailure();
    } on HttpException {
      throw const Failure(message: "Couldn't find the city 😱");
      // throw CityNotFoundFailure();
    } on FormatException {
      throw const Failure(message: "Bad response format 👎");
      // throw ResposeFormatFailure();
    }
  }

  void dispose() {
    _client.close();
  }
}

// /// Exception thrown when the provided city is not found.
// class CityNotFoundFailure implements Exception {}

// /// Exception thrown when internet connection fails.
// class InternetConnectionFailure implements Exception {}

// /// Exception thrown when ResposeFormat miss match.
// class ResposeFormatFailure implements Exception {}

// /// Something went wrong
// class SomethingWentWrong implements Exception {}
