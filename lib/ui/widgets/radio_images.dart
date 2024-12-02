import 'package:flutter/material.dart';

class RadioImage extends StatelessWidget {
  const RadioImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),),
            Text("Radio", style: TextStyle(fontSize: 30),),
            Padding(padding: EdgeInsets.all(20),),
            Image(image: NetworkImage("https://images.philips.com/is/image/philipsconsumer/68f036374ecf4fa0bff8b0d000a73369?"), width: 200,)
          ],
        ),
      ),
    );
  }
}