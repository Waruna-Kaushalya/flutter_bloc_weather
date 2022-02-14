import '../../models/models.dart';

abstract class WeatherApi {
  /// Fectch [weather] data from api
  Future<Weather> getWeather(String cityName);
}
