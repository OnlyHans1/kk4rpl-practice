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
            Image(image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.philips.co.id%2Fid%2Fc-p%2FTAPR802_12%2Fradio-internet&psig=AOvVaw1E5WGOP2kWwmu4oAY4r70s&ust=1733221803074000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMjTrcLwiIoDFQAAAAAdAAAAABAE"), width: 200,)
          ],
        ),
      ),
    );
  }
}