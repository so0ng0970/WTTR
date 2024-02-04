import "dart:math" show pi;
import 'package:flutter/material.dart';

import '../const/color.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 4000), vsync: this);
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RAINY,
      body: AnimatedBuilder(
        animation: animationController,
        child: Center(
          child: Image.asset(
            'asset/images/sun.png',
            scale: 4,
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: animationController.value * 2 * pi,
            child: child,
          );
        },
      ),
    );
  }
}
