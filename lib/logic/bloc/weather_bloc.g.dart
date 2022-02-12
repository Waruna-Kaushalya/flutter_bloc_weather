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
      isTemperatureUnitsState:
          json['isTemperatureUnitsState'] as bool? ?? false,
      temperatureUnits: $enumDecodeNullable(
              _$TemperatureUnitsEnumMap, json['temperatureUnits']) ??
          TemperatureUnits.kelvin,
      selections: (json['selections'] as List<dynamic>?)
              ?.map((e) => e as bool)
              .toList() ??
          const [true, false],
      errorMsg: json['errorMsg'] as String?,
    );

Map<String, dynamic> _$$_WeatherStateToJson(_$_WeatherState instance) =>
    <String, dynamic>{
      'stateStatus': _$WeatherStateStatusEnumMap[instance.stateStatus],
      'temperature': instance.temperature,
      'cityName': instance.cityName,
      'isTemperatureUnitsState': instance.isTemperatureUnitsState,
      'temperatureUnits': _$TemperatureUnitsEnumMap[instance.temperatureUnits],
      'selections': instance.selections,
      'errorMsg': instance.errorMsg,
    };

const _$WeatherStateStatusEnumMap = {
  WeatherStateStatus.initial: 'initial',
  WeatherStateStatus.loading: 'loading',
  WeatherStateStatus.success: 'success',
  WeatherStateStatus.failure: 'failure',
};

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.kelvin: 'kelvin',
  TemperatureUnits.celsius: 'celsius',
};
