import 'package:freezed_annotation/freezed_annotation.dart';

import '../failure/failure.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  factory Weather({
    @JsonKey(name: 'name') required String cityname,
    @JsonKey(name: 'main') required Main temperature,
    Failure? failure,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Main with _$Main {
  @JsonSerializable(explicitToJson: true)
  factory Main({
    @JsonKey(name: 'temp') required double temperature,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
