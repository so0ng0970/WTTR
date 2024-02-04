import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wearther_app/model/weather_model.dart';

import '../component/weather_card.dart';
import '../const/color.dart';
import '../const/weather_list.dart';
import '../model/weather_list_model.dart';
import '../repository/weather_repository.dart';
import 'loading_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  Future<WeatherModel> loadWeatherData() async {
    final data = await Network().getJsonData();
    print('454');
    return data;
  }

  @override
  void initState() {
    timer = Timer.periodic(
        const Duration(minutes: 1), (Timer t) => loadWeatherData());
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
      future: loadWeatherData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('에러입니다'),
          );
        }
        if (!snapshot.hasData) {
          return const LoadingScreen();
        }

        WeatherModel data = snapshot.data!;
        WeatherListModel matchedWeather = WeatherList.firstWhere(
          (weather) => weather.id == data.weatherId,
          orElse: () => WeatherListModel(
            id: 2,
            weather: 'Showers',
            imageUrl: 'asset/images/Showers.png',
            backgroundColor: SHOWERS,
            fontColor: WHITE,
          ),
        );
        return WeatherCard(
          weather: matchedWeather,
          data: data,
        );
      },
    );
  }
}
