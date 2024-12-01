import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  const Komputer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),),
            Text("Komputer", style: TextStyle(fontSize: 30),),
            Padding(padding: EdgeInsets.all(20),),
            Icon(Icons.computer, size: 90,)
          ],
        ),
      ),
    );
  }
}