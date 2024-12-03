import 'package:flutter/material.dart';

class ListViewPages extends StatelessWidget {
  const ListViewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: const Text("List View"),
      ),
      body: ListView(
        children: const [
          ListTutorial(
              gambar:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEc9A_S6BPxCDRp5WjMFEfXrpCu1ya2OO-Lw&s",
              judul: "HTML"),
          ListTutorial(
              gambar:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqX5JpiFmSSrwJS5N-DGi61Nc69XFjrESHMg&s",
              judul: "CSS"),
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/JavaScript-logo.png/768px-JavaScript-logo.png",
              judul: "JAVASCRIPT"),
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/1969px-Laravel.svg.png",
              judul: "LARAVEL"),
          ListTutorial(
              gambar:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png",
              judul: "VUE JS"),
          ListTutorial(
              gambar:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIrq4Je7z6sTWiUmCy2ROVBWjrkv67wBxhDA&s",
              judul: "EXPRESS JS"),
          ListTutorial(
              gambar:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlGmKtrnxElpqw3AExKXPWWBulcwjlvDJa1Q&s",
              judul: "REACT JS"),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  final String gambar;
  final String judul;

  const ListTutorial({super.key, required this.gambar, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Row(
          children: [
            Image(
              image: NetworkImage(gambar),
              width: 80,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      judul,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const Text(
                      "Ini adalah deksripsi tutorial ...",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
