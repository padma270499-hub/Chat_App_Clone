// import 'package:flutter/material.dart';
//
// class NotificationScreen1 extends StatefulWidget {
//   const NotificationScreen1({super.key});
//
//   @override
//   State<NotificationScreen1> createState() => _NotificationScreen1State();
// }
//
// class _NotificationScreen1State extends State<NotificationScreen1> {
//   List dev = [
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.blue, "num": "0"},
//     {"color": Colors.pinkAccent, "num": "0"},
//     {"color": Colors.purpleAccent, "num": "0"},
//     {"color": Colors.pink, "num": "0"},
//     {"color": Colors.amber, "num": "0"},
//     {"color": Colors.orangeAccent, "num": "0"},
//     {"color": Colors.yellowAccent, "num": "0"},
//     {"color": Colors.red, "num": "0"},
//     {"color": Colors.greenAccent, "num": "0"},
//     {"color": Colors.purpleAccent, "num": "0"},
//     {"color": Colors.yellowAccent, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.lightGreen, "num": "0"},
//     {"color": Colors.cyanAccent, "num": "0"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Gridview"), centerTitle: true),
//       body: GridView.builder(
//         itemCount: dev.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 5,
// mainAxisSpacing: 5,
//         ),
//         itemBuilder: (context, index) {
//           return Container(
//             height: 120,
//             width: 50,
//             color: dev[index]["color"],
//             child: Center(child: Text(dev[index]["num"])),
//           );
//         },
//       ),
//     );
//   }
// }
