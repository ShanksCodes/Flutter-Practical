//invalid.dart
import 'package:flutter/material.dart';
import '../lib/homePage.dart';

class invalid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invalid Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.cancel,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Text(
              'Invalid login. Please try again.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the HomePage
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text(
                'Go Back',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}