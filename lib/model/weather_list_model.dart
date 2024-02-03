// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

class WeatherListModel {
  final int id;
  final String weather;
  final String imageUrl;
  final Color backgroundColor;
  final Color fontColor;
  WeatherListModel({
    required this.id,
    required this.weather,
    required this.imageUrl,
    required this.backgroundColor,
    required this.fontColor,
  });
}
