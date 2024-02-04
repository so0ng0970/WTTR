// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../model/weather_list_model.dart';
import '../model/weather_model.dart';

class WeatherCard extends StatelessWidget {
  WeatherListModel weather;
  WeatherModel data;
  WeatherCard({
    Key? key,
    required this.weather,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildWeatherColumn(
        {required String tem, required IconData icon, required String name}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
            color: weather.fontColor,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: weather.fontColor,
            ),
          ),
          Text(
            tem,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: weather.fontColor,
            ),
          )
        ],
      );
    }

    final tempCelsius = (data.temp - 273.15).round();
    return Scaffold(
      backgroundColor: weather.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Stack(children: [
              Image.asset(weather.imageUrl),
              Positioned(
                right: 0,
                top: 10,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    weather.weather,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                        color: weather.fontColor),
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
              height: 1,
              color: weather.fontColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.cityName,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 40,
                        color: weather.fontColor,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$tempCelsiusº',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 80,
                            color: weather.fontColor,
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              buildWeatherColumn(
                                name: 'Clouds',
                                icon: Icons.cloud_outlined,
                                tem: data.clouds.toString(),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              buildWeatherColumn(
                                name: 'humidity',
                                icon: Icons.water_drop_outlined,
                                tem: data.humidity.toString(),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
