// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      cityname: json['name'] as String,
      temperature: Main.fromJson(json['main'] as Map<String, dynamic>),
      failure: json['failure'] == null
          ? null
          : Failure.fromJson(json['failure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'name': instance.cityname,
      'main': instance.temperature.toJson(),
      'failure': instance.failure?.toJson(),
    };

_$_Main _$$_MainFromJson(Map<String, dynamic> json) => _$_Main(
      temperature: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainToJson(_$_Main instance) => <String, dynamic>{
      'temp': instance.temperature,
    };
