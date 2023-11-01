import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:university_app/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Padding(
              // padding: EdgeInsets.all(8.0),
              const SizedBox(height: 20),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter First Name",
                      border: OutlineInputBorder()), // InputDecoration
                ),
              ),
              // TextField
              // Padding(
              //
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter Last Name",
                      border: OutlineInputBorder()), // InputDecoration
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: "Enter Email",
                      border: OutlineInputBorder()), // InputDecoration
                ),
              ),
              // Padding(
              //
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter Password",
                      border: OutlineInputBorder()), // InputDecoration
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Re-enter password",
                      border: OutlineInputBorder()), // InputDecoration
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text('Register'),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(style: defaultStyle, children: <TextSpan>[
                TextSpan(text: 'Already have an account?'),
                TextSpan(
                    text: 'Log In',
                    style: linkStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                        print('Log In');
                      })
              ]))
            ],
          ),
        ),
      ),
    );
  }
}


//TextSpan([TextSpan=>Do you have an account,TextSpan])