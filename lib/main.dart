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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Belanosima',
        textTheme: const TextTheme(),
      ),
      home: const SplashScreen(),
    );
  }
}
