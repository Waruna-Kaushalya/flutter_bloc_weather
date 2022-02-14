// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      cityname: json['cityname'] as String,
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'cityname': instance.cityname,
      'temperature': instance.temperature,
    };
