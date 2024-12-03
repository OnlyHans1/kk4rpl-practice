import 'package:flutter/material.dart';

class HeadsetImage extends StatelessWidget {
  const HeadsetImage({super.key});

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
              "Headset",
              style: TextStyle(fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            Image.asset(
              "assets/headset.jpg",
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
