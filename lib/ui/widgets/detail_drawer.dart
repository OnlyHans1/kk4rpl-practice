import 'package:flutter/material.dart';

class DetailDrawer extends StatelessWidget {
  final String nama;
  final String gambar;

  const DetailDrawer({
    super.key, 
    required this.nama, 
    required this.gambar
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail $nama"),
        backgroundColor: Colors.red[700],
      ),
      body: Container(
        child: Center(
          child: Image(image: NetworkImage(gambar)),
        ),
      ),
    );
  }
}
