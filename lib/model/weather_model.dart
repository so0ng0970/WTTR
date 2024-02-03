
class WeatherModel {
  final double main;
  WeatherModel({
    required this.main,
  });


  WeatherModel.fromJson({required Map<String, dynamic> json})
      : main = double.parse(json['main'] ?? 'Mist');
}
