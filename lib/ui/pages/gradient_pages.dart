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
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              colors: [Colors.red, Colors.yellow, Colors.green]),
        ),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 22),
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
          itemCount: gambar.length,
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

  void _pilihannya(Pilihan pilihan){
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dota Hero"),
        backgroundColor: Colors.grey,
        actions: [
          PopupMenuButton<Pilihan>(
            onSelected: _pilihannya,
            itemBuilder: (BuildContext context){
              return listPilihan.map((Pilihan x){
                return PopupMenuItem<Pilihan>(
                  child: Text(x.teks),
                  value: x,
                );
              }).toList();
            }
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(center: Alignment.center, colors: [
                Colors.blue,
                Colors.white,
                Colors.black.withOpacity(0.9)
              ]),
            ),
          ),
          Center(
            child: Hero(
                tag: widget.gambar,
                child: ClipOval(
                  child: SizedBox(
                    height: 200,
                    width: 200,
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
                )),
          ),
        ],
      ),
    );
  }
}

class Pilihan {
  final String teks;
  final Color warna;

  const Pilihan(
    this.teks, 
    this.warna,
  );
}

List<Pilihan> listPilihan = const <Pilihan>[
  Pilihan (teks: "Strength", warna: Colors.red),
  Pilihan (teks: "Agility", warna: Colors.green),
  Pilihan (teks: "Intelligence", warna: Colors.blue),
]
