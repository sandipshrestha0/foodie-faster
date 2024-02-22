import 'package:flutter/material.dart';
import 'package:foodiefaster/splashScreen.dart';
import 'package:foodiefaster/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: const splashScreen(),
    );
  }
}
