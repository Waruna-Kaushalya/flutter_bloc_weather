import 'package:http/http.dart' as http;

class WeatherApi {
  //base url. url end point
  static const String _baseUrl =
      "http://api.openweathermap.org/data/2.5/weather?q=";

  //Api key
  static const String _apiKey = "01cc8328d04c516c03c84af29cd9c0d9";
  final http.Client _client;

  WeatherApi({http.Client? client}) : _client = client ?? http.Client();

  //Fectch weather data from api
  Future<dynamic> getWeatherRawData(String cityName) async {
    final url = '$_baseUrl$cityName&appid=$_apiKey';

    final response = await _client.post(
      Uri.parse(url),
    );

    return response;
  }

  void dispose() {
    _client.close();
  }
}
