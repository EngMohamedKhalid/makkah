import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:makkah/modules/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      duration: 1250,
      centered: true,
      splashIconSize: double.infinity,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.scaleTransition,
      splash:Center(
        child: Image.asset(
          "assets/images/s.jpg",
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      nextScreen:const HomeScreen(),
    );
  }
}
