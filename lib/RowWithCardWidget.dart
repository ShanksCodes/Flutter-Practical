import 'package:flutter/material.dart';  // Fixed typo in the import statement

class RowWithCardWidget extends StatelessWidget {
  const RowWithCardWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.flight,
          size: 58,
          color: Colors.lightBlue,
        ),
        title: Text('Student: $index'),
        subtitle: Text('From Best batch'),
        trailing: Text(
          '> ${index * 70}%',
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
