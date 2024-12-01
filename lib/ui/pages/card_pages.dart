import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  const CardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Parsing'),
      ),
      body: Container(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardCustom(
              icon: Icons.home,
              teks: "Home",
              colorIcon: Colors.brown,
            ),
            CardCustom(
              icon: Icons.favorite,
              teks: "Favorite",
              colorIcon: Colors.pink,
            ),
            CardCustom(
              icon: Icons.place,
              teks: "Place",
              colorIcon: Colors.blue,
            ),
            CardCustom(
              icon: Icons.settings,
              teks: "Settings",
              colorIcon: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CardCustom extends StatelessWidget {
  final IconData icon;
  final String teks;
  final Color colorIcon;

  const CardCustom({
    super.key,
    required this.icon,
    required this.teks,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
              color: colorIcon,
            ),
            Text(
              teks,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
