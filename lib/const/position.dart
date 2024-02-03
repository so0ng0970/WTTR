import 'package:geolocator/geolocator.dart';

Future<Position?> getCurrentLocation() async {
  final isLocationEnabled = await Geolocator.isLocationServiceEnabled();
  if (!isLocationEnabled) {
    print('위치 서비스를 활성화 해주세요');
    return null;
  }

  LocationPermission checkedPermission = await Geolocator.checkPermission();
  if (checkedPermission == LocationPermission.denied) {
    checkedPermission = await Geolocator.requestPermission();
    if (checkedPermission == LocationPermission.denied) {
      print('위치 권한을 허가해주세요');
      return null;
    }
  }

  if (checkedPermission == LocationPermission.deniedForever) {
    print('앱의 위치 권한을 세팅에서 허가해주세요');
    return null;
  }

  Position? position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  return position;
}
