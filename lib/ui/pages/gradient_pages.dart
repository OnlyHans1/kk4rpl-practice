import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class GradientPages extends StatefulWidget {
  const GradientPages({super.key});

  @override
  State<GradientPages> createState() => _GradientPagesState();
}

class _GradientPagesState extends State<GradientPages> {
  final List<String> gambar = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"];

  @override
  Widget build(BuildContext context) {
    timeDilation = 5;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              colors: [Colors.red, Colors.yellow, Colors.green]),
        ),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 22),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                        tag: gambar[i],
                        child: Material(
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) => HalamanDua(
                                  gambar: gambar[i],
                                ),
                              ),
                            ),
                            child: Image.asset(
                              "assets/${gambar[i]}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  final String gambar;

  const HalamanDua({super.key, required this.gambar});

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  Color warna = Colors.grey;
  Color gradientColor = Colors.blue;

  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
      gradientColor = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dota Hero"),
        backgroundColor: warna,
        actions: [
          PopupMenuButton<Pilihan>(
              onSelected: _pilihannya,
              itemBuilder: (BuildContext context) {
                return listPilihan.map((Pilihan x) {
                  return PopupMenuItem<Pilihan>(
                    value: x,
                    child: Text(x.teks),
                  );
                }).toList();
              }),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                colors: [
                  gradientColor,
                  Colors.white,
                  Colors.black.withOpacity(0.9),
                ],
              ),
            ),
          ),
          Center(
            child: Hero(
              tag: widget.gambar,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    center: Alignment.center,
                    colors: [
                      gradientColor,
                      gradientColor.withOpacity(0.7),
                      Colors.black.withOpacity(0.5),
                    ],
                  ),
                ),
                child: ClipOval(
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Image.asset(
                        "assets/${widget.gambar}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Pilihan {
  final String teks;
  final Color warna;

  const Pilihan({required this.teks, required this.warna});
}

List<Pilihan> listPilihan = <Pilihan>[
  const Pilihan(teks: "Strength", warna: Colors.red),
  const Pilihan(teks: "Agility", warna: Colors.green),
  const Pilihan(teks: "Intelligence", warna: Colors.blue),
];
