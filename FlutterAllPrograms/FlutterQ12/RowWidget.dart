import 'package:flutter/material.dart';


class RowWidget extends StatelessWidget{
  const RowWidget({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;
  @override

  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.directions_bike,
          size: 48.0,
          color: Colors.lightGreen,
        ),
        title: Text('Student $index'),
        subtitle: Text('Best College'),
        trailing: Text(
          ' >  ${index * 70}%',
          style: TextStyle(color: Colors.lightBlue),
        ),
        onTap: () {
          print('Tapped on Row $index');
        },
      ),
    );
  }
}