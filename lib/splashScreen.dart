import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodiefaster/welcomePage.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: AnimatedSplashScreen(
  splash: "images/splashimg.gif",
  nextScreen: WelcomePage(),
 duration: 3000,
 ),
    );
  }
}