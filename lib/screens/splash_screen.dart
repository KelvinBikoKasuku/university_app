import 'package:flutter/material.dart';
import 'package:university_app/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            child: Text("Welcome",
                style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
          ),
        ));
  }
}
