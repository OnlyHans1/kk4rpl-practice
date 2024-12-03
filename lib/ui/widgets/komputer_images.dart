import 'package:flutter/material.dart';

class KomputerImage extends StatelessWidget {
  const KomputerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            const Text(
              "Komputer",
              style: TextStyle(fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Image.asset(
              "assets/komputer.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
