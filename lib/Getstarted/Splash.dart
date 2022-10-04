import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dgecommerc/Getstarted/GetStartedScreen.dart';
import 'package:dgecommerc/Global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(

        duration: 2000,
        splash: Image.asset('assets/logo/dg-logo.png'),
        nextScreen:  GetStarted(),
        animationDuration:const Duration(seconds: 2) ,
        //nextScreen: MyNavigationBar(),
        splashTransition: SplashTransition.fadeTransition,

        backgroundColor: secondBlack);
  }
}
