import 'package:flutter/material.dart';

class StylePages extends StatelessWidget {
  const StylePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.blue[900],
      width: 200,
      height: 100,
      child: const Center(
        child: Icon(
          Icons.android, color: Colors.green, size: 70,
        )
      ),
    )));
  }
}
