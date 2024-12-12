// import 'package:flutter/material.dart';
// import 'package:kk4rpl_project/ui/widgets/myDrawer.dart';

// class PlayerPages extends StatefulWidget {
//   const PlayerPages({super.key});

//   @override
//   State<PlayerPages> createState() => _PlayerPagesState();
// }

// class _PlayerPagesState extends State<PlayerPages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: MyDrawer(),
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 150,
//                 height: 150,
//                 child: Image.asset("assets/logo.png"),
//               ),
//               Text(
//                 "Rhaihan Testing",
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }