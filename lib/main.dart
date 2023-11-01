import 'package:flutter/material.dart';
import 'package:university_app/screens/home_screen.dart';
import 'package:university_app/screens/register_screen.dart';

import 'screens/login_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first Application",
      color: Colors.blueAccent,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
