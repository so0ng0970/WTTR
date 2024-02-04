import 'package:dio/dio.dart';
import 'package:wearther_app/const/http_url.dart';

import '../model/weather_model.dart';

class Network {
  Future<WeatherModel> getJsonData() async {
    String url = await getDataUrl();
    Dio dio = Dio();
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
