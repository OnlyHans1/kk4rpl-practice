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
          child: Text(
            "flutter practice"
          ),
        ),
        actions: const <Widget>[
          Icon(Icons.search)
        ],
      ),
    );
  }
}