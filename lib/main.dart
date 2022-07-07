import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:g_d/HOME.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

main() {
  runApp(HOME());
}

class HOME extends StatelessWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Color(0xff000),
        splash: Lottie.asset('lotties/8571-cambios.json',alignment: Alignment.center),
       splashIconSize: 450,
        duration: 2700,
        nextScreen: Quiz(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}
