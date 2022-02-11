// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherState _$$_WeatherStateFromJson(Map<String, dynamic> json) =>
    _$_WeatherState(
      stateStatus: $enumDecodeNullable(
              _$WeatherStateStatusEnumMap, json['stateStatus']) ??
          WeatherStateStatus.initial,
      temperature: (json['temperature'] as num?)?.toDouble(),
      cityName: json['cityName'] as String,
      temperatureUnitsState: json['temperatureUnitsState'] as bool? ?? false,
      temperatureUnits: $enumDecodeNullable(
              _$TemperatureUnitsEnumMap, json['temperatureUnits']) ??
          TemperatureUnits.fahrenheit,
      errorMsg: json['errorMsg'] as String?,
    );

Map<String, dynamic> _$$_WeatherStateToJson(_$_WeatherState instance) =>
    <String, dynamic>{
      'stateStatus': _$WeatherStateStatusEnumMap[instance.stateStatus],
      'temperature': instance.temperature,
      'cityName': instance.cityName,
      'temperatureUnitsState': instance.temperatureUnitsState,
      'temperatureUnits': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
      'errorMsg': instance.errorMsg,
    };

const _$WeatherStateStatusEnumMap = {
  WeatherStateStatus.initial: 'initial',
  WeatherStateStatus.loading: 'loading',
  WeatherStateStatus.success: 'success',
  WeatherStateStatus.failure: 'failure',
};

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.fahrenheit: 'fahrenheit',
  TemperatureUnits.celsius: 'celsius',
};
