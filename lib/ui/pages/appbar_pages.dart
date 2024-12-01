import 'package:flutter/material.dart';

class AppbarPages extends StatelessWidget {
  const AppbarPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: const Icon(Icons.home),
          title: const Center(
            child: Text("flutter practice"),
          ),
          actions: const <Widget>[Icon(Icons.search)],
        ),
        body: Container(
            child: const Column(
          children: [
            Icon(
              Icons.local_pizza,
              size: 70,
              color: Colors.red,
            ),
            Row(
              children: [
                Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red,
                ),
                Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red,
                ),
                Icon(
                  Icons.donut_large,
                  size: 70,
                  color: Colors.red,
                ),
              ],
            ),
            Icon(
              Icons.cake,
              size: 70,
              color: Colors.red,
            )
          ],
        )));
  }
}
