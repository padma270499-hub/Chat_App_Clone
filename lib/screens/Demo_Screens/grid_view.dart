// import 'package:flutter/material.dart';
//
// class GridView1 extends StatefulWidget {
//   const GridView1({super.key});
//
//   @override
//   State<GridView1> createState() => _GridView1State();
// }
//
// class _GridView1State extends State<GridView1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Grid View2"), centerTitle: true),
//       body: GridView.builder(
//         itemCount: 10,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//           crossAxisSpacing: 8,
//           mainAxisSpacing: 8,
//           childAspectRatio: 1/1,
//
//
//         ),
//         itemBuilder: (context, index) {
//           return Image.asset("assets/images/workimg.jpg",fit: BoxFit.cover,);
//         },
//       ),
//     );
//   }
// }
