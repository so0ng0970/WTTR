// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      cityName: json['cityName'] as String,
      weatherId: json['weatherId'] as int,
      humidity: json['humidity'] as int,
      clouds: json['clouds'] as int,
      temp: (json['temp'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'cityName': instance.cityName,
      'weatherId': instance.weatherId,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'temp': instance.temp,
    };
