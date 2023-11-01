import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:university_app/screens/home_screen.dart';
import 'package:university_app/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder()), // InputDecoration
                  ),
                ),
              ), // TextField
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon:
                            Icon(Icons.remove_red_eye), // InputDecoration
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Login'),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(style: defaultStyle, children: <TextSpan>[
                TextSpan(text: "Don't have an account?"),
                TextSpan(
                    text: 'Register',
                    style: linkStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                        print('Register');
                      })
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
