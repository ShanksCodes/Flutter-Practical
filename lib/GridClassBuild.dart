// class GridViewBuilderWidget extends StatelessWidget {
//   const GridViewBuilderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> _imageList = GridImages.getImageList();
//     return GridView.builder(
//       itemCount: _imageList.length,
//       padding: EdgeInsets.all(8.0),
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 150.0,
//       ),
//       itemBuilder: (BuildContext context, int index) {
//         print('_buildGridViewBuilder $index');
//         return Card(
//           color: Colors.lightGreen.shade50,
//           margin: EdgeInsets.all(8.0),
//           child: InkWell(
//             onTap: () {
//               // Navigate to a new page when the image is tapped
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailPage(imagePath: _imageList[index]),
//                 ),
//               );
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Image.asset(
//                   _imageList[index],
//                   width: 48.0,
//                   height: 48.0,
//                 ),
//                 Divider(),
//                 Text(
//                   'Index $index',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class ImageDetailPage extends StatelessWidget {
//   final String imagePath;
//
//   const ImageDetailPage({Key? key, required this.imagePath}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Detail'),
//       ),
//       body: Center(
//         child: Image.asset(
//           imagePath,
//           width: 200.0, // Adjust the width as needed
//           height: 200.0, // Adjust the height as needed
//         ),
//       ),
//     );
//   }
// }
//
// class GridImages {
//   static List<String> getImageList() {
//     // Replace this with your actual list of image asset paths
//     return [
//       'app_img_src/f0.png',
//       'app_img_src/f1.png',
//       'app_img_src/f2.ppg',
//       'app_img_src/f3.ppg',
//       'app_img_src/f4.png',
//       'app_img_src/f5.pngpg',
//       // Add more image paths as needed
//     ];
//   }
// }











//////////////////////////////////////////////////////////////

// // GridClassBuild.dart
// import 'package:flutter/material.dart';
//
// class GridViewBuilderWidget extends StatelessWidget {
//   const GridViewBuilderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: 8, // Adjust the number of items as needed
//       padding: EdgeInsets.all(8.0),
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
//       ),
//       itemBuilder: (BuildContext context, int index) {
//         print('_buildGridViewBuilder $index');
//         return Card(
//           color: Colors.lightGreen.shade50,
//           margin: EdgeInsets.all(8.0),
//           child: InkWell(
//             onTap: () {
//               print('Row $index');
//             },
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Image.asset(
//                   'app_img_src/f$index.png', // Adjust the path based on your folder structure
//                   width: 48.0,
//                   height: 48.0,
//                 ),
//                 const Divider(),
//                 Text(
//                   'Index $index',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }



///////////////////////////////////////////////

// GridClassBuild.dart
// import 'package:flutter/material.dart';
//
// class GridViewBuilderWidget extends StatelessWidget {
//   const GridViewBuilderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: 7, // Adjust the number of items as needed
//       padding: EdgeInsets.all(8.0),
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: MediaQuery.of(context).size.width / 4,
//       ),
//       itemBuilder: (BuildContext context, int index) {
//         print('_buildGridViewBuilder $index');
//         return Hero(
//           tag: 'image$index', // Unique tag for each image
//           child: Card(
//             color: Colors.lightGreen.shade50,
//             margin: EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) {
//                       return _buildDetailScreen(index);
//                     },
//                   ),
//                 );
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     'app_img_src/f$index.png', // Adjust the path based on your folder structure
//                     width: 48.0,
//                     height: 48.0,
//                   ),
//                   const Divider(),
//                   Text(
//                     'Index $index',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _buildDetailScreen(int index) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Detail'),
//       ),
//       body: Center(
//         child: Hero(
//           tag: 'image$index',
//           child: Image.asset(
//             'app_img_src/f$index.png', // Adjust the path based on your folder structure
//             width: 200.0, // Adjust the width as needed
//             height: 200.0, // Adjust the height as needed
//           ),
//         ),
//       ),
//     );
//   }
// }


//////////////////////////////////////


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
