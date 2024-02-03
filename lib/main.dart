import 'package:flutter/material.dart';
import 'package:wearther_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Belanosima',
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
          bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          bodyMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 80),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
