part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

//this is event comming from presentation layer
class GetWeather extends WeatherEvent {
  //event comming with city name. Varible need to catch event data
  final String cityName;
  const GetWeather({required this.cityName});

  //Generate equality
  @override
  List<Object> get props => [cityName];
}

class ToggleUnits extends WeatherEvent {
  // final TemperatureUnits temperatureUnits;
  final bool isTemperatureUnits;
  final List<bool> selections;
  const ToggleUnits({
    required this.isTemperatureUnits,
    required this.selections,
  });

  //Generate equality
  @override
  List<Object> get props => [isTemperatureUnits];
}
