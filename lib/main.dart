import 'package:flutter/material.dart';
import 'navigation_screen.dart';  // Make sure to import the new navigation screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost & Found App',
      home: NavigationScreen(),  // Set NavigationScreen as the home
    );
  }
}
