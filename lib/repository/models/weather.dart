import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

enum TemperatureUnits { kelvin, celsius }

extension TemperatureUnitsX on TemperatureUnits {
  bool get isKelvin => this == TemperatureUnits.kelvin;
  bool get isCelsius => this == TemperatureUnits.celsius;
}

@freezed
abstract class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  factory Weather({
    required String cityname,
    required double temperature,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
