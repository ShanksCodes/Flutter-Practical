import 'package:flutter/material.dart';


class RowWithCardWidget extends StatelessWidget{
  const RowWithCardWidget({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context){
    return Card(
      child: ListTile(
        leading: Image.asset(
          'app_img_src/q1.jpg', // Adjust the path accordingly
          width: 60,
          height: 60,
        ),
        // leading: Icon(
        //   Icons.flight,
        //   size: 58.0,
        //   color: Colors.lightBlue,
        // ),
        title: Text('Student $index'),
        subtitle: Text('from Best batch'),
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