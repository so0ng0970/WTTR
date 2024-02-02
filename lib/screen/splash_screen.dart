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
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/images/splash.jpg'),
              ),
            ),
          ),
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
                      ..color = Colors.black, // <-- Border color
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
