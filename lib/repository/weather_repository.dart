import 'package:dio/dio.dart';
import 'package:wearther_app/const/http_url.dart';

class Network {
  Future<dynamic> getJsonData() async {
    String url = await getDataUrl();
    Dio dio = Dio();
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      var parsingData = response.data;
      var weather = parsingData['weather'];
      if (weather is List && weather.isNotEmpty) {
        var mainWeather = weather[0]['main'];
        print(mainWeather);
        return mainWeather;
      }
      return null;
    }
  }
}
