import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wearther_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 67, 136, 240),
      body: Stack(
        children: [
          Center(child: Image.asset('asset/images/splash.jpg')),
          Positioned(
            bottom: 0,
            right: 10,
            child: Stack(
              children: [
                Text(
                  'WTTL',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NaNHoloGigawide',
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(
                          255, 78, 78, 78), // <-- Border color
                  ),
                ),
                const Text(
                  'WTTL',
                  style: TextStyle(
                    fontFamily: 'NaNHoloGigawide',
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow, // <-- Inner color
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
