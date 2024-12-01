import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HalHallo(),
  ));
}

class HalHallo extends StatelessWidget {
  const HalHallo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
      Center(
        child: Text('Hello, World!'),
      ) 
    );
  }
}
