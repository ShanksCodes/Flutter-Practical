
import 'package:flutter/material.dart';

class GridIcons {
  static List<int> getIconList() {
    return List<int>.generate(8, (index) => index);
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> _iconList = GridIcons.getIconList();
    return GridView.builder(
      itemCount: _iconList.length,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        print('_buildGridViewBuilder $index');
        return Card(
          color: Colors.lightGreen.shade50,
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Hero(
              tag: 'hero-rectangle',
              child: BoxWidget(size: Size(50.0, 50.0), imgIndex: index),
            ),
            onTap: () {
              _ZoomImgPage(context, index);
              print('Tapped on index $index');
            },
          ),
        );
      },
    );
  }
}

void _ZoomImgPage(BuildContext context, int index) {
  Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Image Zoom'),
      ),
      body: Center(
        child: InkWell(
          child: Hero(
            tag: 'hero-rectangle',
            child: BoxWidget(size: Size(50.0, 50.0), imgIndex: index),
          ),
          onTap: () {
            Navigator.pop(context); // This will pop the route and go back
          },
        ),
      ),
    ),
  ));
}

class BoxWidget extends StatelessWidget {
  BoxWidget({Key? key, required this.size, required this.imgIndex})
      : super(key: key);

  final Size size;
  final int imgIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width+200,
        height: size.height+200,
        color: Colors.blue,
        child: Image.asset('app_img_src/f$imgIndex.png'));
  }
}
