import 'dart:math';
import 'package:flutter/material.dart';
import '../lib/header.dart';
import '../lib/RowWidget.dart';
import '../lib/RowWithCardWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mca 3rd - Card Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA 3rd sem List View Demo'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index){
            if(index == 0){
              return HeaderWidget(index: index);
            }
            else if (index >= 1 && index <= 3){
              return RowWithCardWidget(index: index);
            }
            else{
              return RowWidget(index: index);
            }
          },
        ),
      ),
    );
  }
}