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
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GetWeather && other.cityName == cityName;
  }

  @override
  int get hashCode => cityName.hashCode;
}
