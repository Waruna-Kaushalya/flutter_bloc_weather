// part of 'weather_cubit.dart';

// @immutable
// abstract class WeatherState {
//   const WeatherState();
// }

// //There are 4 states

// //WeatherInitial State - When first time app launch
// class WeatherInitial extends WeatherState {
//   const WeatherInitial();
// }

// //WeatherLoading State - When user enter city name and hit enter and waiting time for fetching data
// class WeatherLoading extends WeatherState {
//   const WeatherLoading();
// }

// //WeatherLoaded State - After sucsessfully loaded city weather data
// class WeatherLoaded extends WeatherState {
//   //weather object use for fetch data in to frontend
//   //cityName use for enter city name
//   final Weather weather;
//   final String cityName;
//   const WeatherLoaded(
//     this.weather,
//     this.cityName,
//   );

//   //this part for compare current and previos object. becase when these two objects are simmiller then bloc ignore to responed current object
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is WeatherLoaded && other.weather == weather;
//   }

//   @override
//   int get hashCode => weather.hashCode;
// }

// //WeatherError State - when occuring error
// class WeatherError extends WeatherState {
//   final String errorMsg;
//   const WeatherError(
//     this.errorMsg,
//   );

//   //this part for compare current and previos object. becase when these two objects are simmiller then bloc ignore to responed current object
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is WeatherError && other.errorMsg == errorMsg;
//   }

//   @override
//   int get hashCode => errorMsg.hashCode;
// }
