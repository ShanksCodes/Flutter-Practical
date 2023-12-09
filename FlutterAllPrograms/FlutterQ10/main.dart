//main.dart
import 'package:flutter/material.dart';
import 'homePage.dart'; // Import the HomePage widget
import 'valid.dart';
import 'invalid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home', // Set the initial route
      routes: {
        '/home': (context) => homePage(),
        '/valid': (context) => valid(),
        '/invalid': (context) => invalid(),
      },
    );
  }
}
