import 'package:flutter/material.dart';

void main() {
  runApp(DragDropApp());
}

class DragDropApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DragDropScreen(),
    );
  }
}

class DragDropScreen extends StatefulWidget {
  @override
  _DragDropScreenState createState() => _DragDropScreenState();
}

class _DragDropScreenState extends State<DragDropScreen> {
  String droppedOnTarget = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<String>(
              data: 'mickey1',
              child: Image.asset(
                'assets/mickey1.png',
                height: 100,
                width: 100,
              ),
              feedback: Image.asset(
                'assets/mickey1.png',
                height: 100,
                width: 100,
              ),
              childWhenDragging: Container(),
            ),
            SizedBox(height: 20),
            Draggable<String>(
              data: 'mickey2',
              child: Image.asset(
                'assets/mickey2.png',
                height: 100,
                width: 100,
              ),
              feedback: Image.asset(
                'assets/mickey2.png',
                height: 100,
                width: 100,
              ),
              childWhenDragging: Container(),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDragTarget('Target 1'),
                buildDragTarget('Target 2'),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Dropped on: $droppedOnTarget',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDragTarget(String target) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String?> candidateData, List<dynamic> rejectedData) {
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(target),
          ),
        );
      },
      onWillAccept: (data) {
        return true;
      },
      onAccept: (data) {
        setState(() {
          droppedOnTarget = target;
        });
      },
      onLeave: (data) {},
    );
  }
}
