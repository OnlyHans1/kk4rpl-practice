// import 'package:flutter/material.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(padding: EdgeInsets.all(20)),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text(
//                 "Home",
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.video_library),
//               title: Text("Flutter", style: TextStyle(fontSize: 18),),
//               onTap: () => Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (BuildContext context) => Playlist(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
