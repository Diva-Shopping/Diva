import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/theming/colors.dart';
import '../../feature/home.dart';

class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> {

   @override
     void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(context,
         MaterialPageRoute( 
          builder: (context) => const HomeVerify() // just temp , untill to add MyHomePage File ..
          ));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ColorsManagers.splashBackgroundColor,
      child: Center(
        child: Lottie.asset(
          'assets/lottie/splash.json',
        ),
      ),
    );
  }
}