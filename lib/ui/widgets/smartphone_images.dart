import 'package:flutter/material.dart';

class SmartphoneImage extends StatelessWidget {
  const SmartphoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),),
            Text("Smartphone", style: TextStyle(fontSize: 30),),
            Padding(padding: EdgeInsets.all(20),),
            Image(image: NetworkImage("https://images-cdn.ubuy.com.sa/63b46431ffafdf2f462e84a6-christmas-gifts-clearance-cbcbtwo-smart.jpg",), width: 200,),
          ],
        ),
      ),
    );
  }
}