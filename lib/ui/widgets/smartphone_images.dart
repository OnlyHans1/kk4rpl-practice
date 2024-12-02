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
            Image(image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ubuy.co.id%2Fid%2Fproduct%2FBP6DK8GL2-smart-phone-12-pro-android-5-1-smartphone-hd-full-screen-phone-dual-sim-unlocked-smart-phone-2g-ram-8gb-rom-5-0-inch-cellphones-mobile-phones&psig=AOvVaw11QkyJLOHgUjI_G-hebyUy&ust=1733221908539000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPiQ8oTxiIoDFQAAAAAdAAAAABAE",), width: 200,),
          ],
        ),
      ),
    );
  }
}