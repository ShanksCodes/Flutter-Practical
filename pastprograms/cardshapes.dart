import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mca 3rd - Card Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA 3rd sem'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
            child: Column(children: [
              Card(
                elevation: 8.0,
                color: Colors.white,
                margin: EdgeInsets.all(16.0),
                shape: StadiumBorder(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Avinash 40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                        color: Colors.orange,
                      ),
                    ),
                    Text('2022-24 batch',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),),
                    Text('BCIIT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pinkAccent),)
                  ],
                ),
              ),
              Card(
                elevation: 8.0,
                color: Colors.white,
                margin: EdgeInsets.all(16.0),
                shape: OutlineInputBorder(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Avinash 40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                        color: Colors.orange,
                      ),
                    ),
                    Text('2022-24 batch',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),),
                    Text('BCIIT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pinkAccent),)
                  ],
                ),
              ),
              Card(
                elevation: 8.0,
                color: Colors.white,
                margin: EdgeInsets.all(16.0),
                shape: StarBorder(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Avinash 40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                        color: Colors.orange,
                      ),
                    ),
                    Text('2022-24 batch',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),),
                    Text('BCIIT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.pinkAccent),)
                  ],
                ),
              )
            ],)
        ),
      ),
    );
  }
}