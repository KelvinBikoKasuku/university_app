import 'package:flutter/material.dart';
import 'package:university_app/screens/home_page.dart';
import 'package:university_app/screens/students_page.dart';
import 'package:university_app/screens/settings_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new selected index
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // homepage
    HomePage(),

    // profilepage
    StudentsPage(),

    // settingspage
    SettingsPage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigationBottomBar,
          items: [
            //home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            //profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Students',
            ),

            //settings
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}
