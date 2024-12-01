import 'package:flutter/material.dart';

class NavigationPages extends StatelessWidget {
  const NavigationPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music"),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Route'); // Navigasi ke '/Route'
          },
          icon: const Icon(
            Icons.headset,
            size: 50,
          ),
        ),
      ),
    );
  }
}

class RoutesPages extends StatelessWidget {
  const RoutesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tes"),
      ),
      body: const Center(
        child: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.speaker,
            size: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
