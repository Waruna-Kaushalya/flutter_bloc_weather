import 'package:flutter_weather_latest_simple_version/data/data_providers/weather_api.dart';
import 'package:flutter_weather_latest_simple_version/repository/models/weather.dart';

abstract class WeatherReposotoryClass {
  WeatherReposotoryClass({required this.apiClient});

  final WeatherApi apiClient;
  Future<Weather> getWeatherLocationData(String cityName);
}

class WeatherReposotory implements WeatherReposotoryClass {
  //api object use for fetch data from api
  @override
  final WeatherApi apiClient;
  WeatherReposotory({required this.apiClient});

  //getWeatherLocationData function is asyncrones method and using fetch data and return data to cubit
  @override
  Future<Weather> getWeatherLocationData(String cityName) async {
    // try {
    //rawWeather get response from api using user enter city name
    // final Response rawWeather = await api.getWeatherRawData(cityName);

    final weather = await apiClient.getWeatherRawData(cityName);
    // if (rawWeather.statusCode == 200) {
    //decode jason response body and map body data
    // Map<String, dynamic> weatherMap = jsonDecode(rawWeather.body);
    // //Map cityname and temp using weather model and return weather data
    // var weather = Weather.fromJson(weatherMap);
    // return weather;

    return Weather(
      cityname: weather.cityname,
      temperature: weather.temperature.temperature,
    );
    //     throw const Failure(message: '450');
    // }
    // } catch (e) {
    //   throw const Failure(message: '900');
    // }
  }
}
