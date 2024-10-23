import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewExamples(),
    );
  }
}

// class GridViewExamples extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GridView Examples'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             Text('Simple Grid with Fixed Items per Row', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 children: [
//                   Container(color: Colors.red),
//                   Container(color: Colors.green),
//                   Container(color: Colors.blue),
//                   Container(color: Colors.yellow),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text('Dynamic Grid with GridView.builder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           color: Colors.grey[300],
//                           child: Icon(Icons.image, size: 50),
//                         ),
//                       ),
//                       Text('Item $index'),
//                     ],
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             Text('Staggered Grid Layout', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: StaggeredGridViewExample(),
//             ),
//             SizedBox(height: 20),
//             Text('Grid with Variable Aspect Ratio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 3 / 2,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: index.isEven ? Colors.red : Colors.blue,
//                     child: Center(child: Text('Item $index')),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             Text('Scrollable Horizontal Grid', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: GridView.builder(
//                 scrollDirection: Axis.horizontal,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 1,
//                   childAspectRatio: 2 / 3,
//                   mainAxisSpacing: 10,
//                 ),
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: Colors.purple,
//                     child: Center(child: Text('Item $index')),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             Text('Grid with Custom Sliver Grid Delegate', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             Container(
//               height: 200,
//               child: GridView.custom(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   mainAxisSpacing: 10,
//                   crossAxisSpacing: 10,
//                   childAspectRatio: 1,
//                 ),
//                 childrenDelegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                     return Container(
//                       color: Colors.teal,
//                       child: Center(child: Text('Item $index')),
//                     );
//                   },
//                   childCount: 10,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StaggeredGridViewExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StaggeredGridView.countBuilder(
//       crossAxisCount: 4,
//       itemCount: 8,
//       itemBuilder: (BuildContext context, int index) => Container(
//         color: Colors.blue,
//         child: Center(child: Text('Item $index')),
//       ),
//       staggeredTileBuilder: (int index) =>
//           StaggeredTile.count(2, index.isEven ? 2 : 1),
//       mainAxisSpacing: 4.0,
//       crossAxisSpacing: 4.0,
//     );
//   }
// }


//test

// return Scaffold(
//   ListView ListView.builder(itemBuilder: 5
//   coulmn(
//     Container(
//       height:20, width:double.infinity
//         )
//   )),)
// )

class ColorBox extends StatelessWidget {
  const ColorBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(margin: EdgeInsets.only(left: 15,right: 15),child: Column(children: [ListView.builder(itemCount: 5,itemBuilder: (Build context, int index) => return Container(height: 20,width: double.infinity,),)))],),),
      );
  
  }
}