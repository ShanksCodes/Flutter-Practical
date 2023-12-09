import 'package:flutter/material.dart';

import 'GridClassBuild.dart';

void main() => runApp(GridApp());

class GridApp extends StatelessWidget {
  const GridApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Grid'),
        ),
        body: GridViewBuilderWidget(),
      ),
    );
  }
}