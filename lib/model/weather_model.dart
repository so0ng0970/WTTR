import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  final String cityName;
  final int weatherId;
  final int humidity;
  final int clouds;
  final double temp;

  WeatherModel({
    required this.cityName,
    required this.weatherId,
    required this.humidity,
    required this.clouds,
    required this.temp,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    var weather = json['weather'];
    int firstDigit;
    if (weather is List && weather.isNotEmpty) {
      var mainWeather = weather[0];
      int id = mainWeather['id'];
      String idString = id.toString();

      if (idString.startsWith('8')) {
        firstDigit = id;
      } else {
        firstDigit = int.parse(idString[0]);
      }
    } else {
      firstDigit = 0;
    }

    return WeatherModel(
      cityName: json['name'],
      weatherId: firstDigit,
      humidity: json['main']['humidity'],
      clouds: json['clouds']['all'],
      temp: json['main']['temp'],
    );
  }

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
