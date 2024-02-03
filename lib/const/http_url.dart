import 'package:geolocator/geolocator.dart';
import 'package:wearther_app/const/position.dart';
import 'data.dart';

Future<String> getDataUrl() async {
  Position? position = await getCurrentLocation();
  if (position == null) {
    return '위치 정보를 얻지 못했습니다.';
  }
  final latitude = position.latitude;
  final longitude = position.longitude;
  final dataUrl =
      "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$MYAPI";
  return dataUrl;
}
