import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();

  static count({required int crossAxisCount}) {}
}

class _GridViewPageState extends State<GridViewPage> {
  List<Container> daftarSuperhero = [];

  var karakter = [
    {"nama": "Aquaman", "gambar": "aquaman.jpg"},
    {"nama": "Batman", "gambar": "batman.jpg"},
    {"nama": "Captain Amerika", "gambar": "captainAmerica.jpg"},
    {"nama": "Catwoman", "gambar": "catwoman.jpg"},
    {"nama": "Flash", "gambar": "flash.jpg"},
    {"nama": "Hulk", "gambar": "hulk.jpg"},
    {"nama": "Ironman", "gambar": "ironman.jpg"},
    {"nama": "Spiderman", "gambar": "spiderman.jpg"},
    {"nama": "Venom", "gambar": "venom.jpg"},
    {"nama": "Superman", "gambar": "superman.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"]!;

      daftarSuperhero.add(Container(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Hero(
                tag: karakternya['nama']!,
                child: Material(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Detail(
                        nama: karakternya['nama']!,
                        gambar: gambar,
                      ),
                    )),
                    child: Image.asset("assets/$gambar", fit: BoxFit.cover, height: 100, width: double.infinity,),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Text(
                karakternya['nama']!,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Super Hero",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarSuperhero,
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final String nama;
  final String gambar;
  const Detail({super.key, required this.nama, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 240,
            child: Hero(
              tag: nama,
              child: Material(
                child: InkWell(
                  child: Image.asset("assets/$gambar", fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          BagianNama(
            nama: nama,
          ),
          const BagianIcon(),
          const Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  final String nama;

  const BagianNama({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                ),
                Text(
                  "$nama\@gmail.com",
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                )
              ],
            ),
          ),
          const Row(
            children: [
              Icon(Icons.star, size: 30, color: Colors.red),
              Text(
                "12",
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  const BagianIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          IconTeks(
            icon: Icons.call,
            teks: "Call",
          ),
          IconTeks(
            icon: Icons.message,
            teks: "Message",
          ),
          IconTeks(
            icon: Icons.photo,
            teks: "Photo",
          ),
        ],
      ),
    );
  }
}

class IconTeks extends StatelessWidget {
  final IconData icon;
  final String teks;

  const IconTeks({super.key, required this.icon, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.blue,
          ),
          Text(
            teks,
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  const Keterangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "data",
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
