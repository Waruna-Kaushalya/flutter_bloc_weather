part of 'weather_bloc.dart';

@immutable
abstract class WeatherState extends Equatable {
  const WeatherState();
}

//There are 4 states

//WeatherInitial State - When first time app launch
class WeatherInitial extends WeatherState {
  const WeatherInitial();

  @override
  List<Object?> get props => [];
}

//WeatherLoading State - When user enter city name and hit enter and waiting time for fetching data
class WeatherLoading extends WeatherState {
  const WeatherLoading();

  @override
  List<Object?> get props => [];
}

//WeatherLoaded State - After sucsessfully loaded city weather data
class WeatherLoaded extends WeatherState {
  //weather object use for fetch data in to frontend
  //cityName use for enter city name
  // final Weather weather;
  final double temp;
  final String cityName;

  const WeatherLoaded({
    // required this.weather,
    required this.temp,
    required this.cityName,
  });

  //this part for compare current and previos object. becase when these two objects are simmiller then bloc ignore to responed current object
  @override
  List<Object?> get props => [temp, cityName];
}

//WeatherError State - when occuring error
class WeatherError extends WeatherState {
  final String errorMsg;
  const WeatherError({
    required this.errorMsg,
  });

  //this part for compare current and previos object. becase when these two objects are simmiller then bloc ignore to responed current object
  @override
  List<Object?> get props => [errorMsg];
}
