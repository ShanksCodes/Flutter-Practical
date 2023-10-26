import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final titleController = TextEditingController();
  String imgUrl = "";

  void _setImage() {
    setState(() {
      imgUrl = titleController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Example"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Image URL'),
              controller: titleController,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: _setImage,
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(8),
              backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
            ),
            child: const Text('Set Image'),
          ),
          const SizedBox(
            height: 20,
          ),
          imgUrl.isNotEmpty
              ? Image.network(
            imgUrl,
            height: 200,
            width: 200,
          )
              : const Text('Enter an image URL and press "Set Image" to display.'),
        ],
      ),
    );
  }
}
