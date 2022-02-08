// import 'package:equatable/equatable.dart';

// class Weather extends Equatable {
//   final double temp;
//   final String name;

//   const Weather(this.temp, this.name);

//   //Map response jason body data
//   Weather.fromJson(Map<String, dynamic> json)
//       : name = json['name'],
//         temp = json['main']?['temp'];

//   @override
//   List<Object?> get props => [temp, name];
// }

//! second

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  factory Weather({
    @JsonKey(name: 'name') required String cityname,
    @JsonKey(name: 'main') required Main main,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class Main with _$Main {
  @JsonSerializable(explicitToJson: true)
  factory Main({
    @JsonKey(name: 'temp') @Convertor() required double temperature,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

class Convertor {
  const Convertor();
}
