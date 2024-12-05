import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/widgets/detail_drawer.dart';

class DrawerPages extends StatefulWidget {
  const DrawerPages({super.key});

  @override
  State<DrawerPages> createState() => _DrawerPagesState();
}

class _DrawerPagesState extends State<DrawerPages> {
  String gambar1 = "https://i.pravatar.cc/300";
  String gambar2 =
      "https://i.pinimg.com/736x/35/66/fb/3566fb6a1401703c145e9662bc3a7958.jpg";
  late String backup;

  String nama1 = "Rhaihan Aditya Hidayat";
  String nama2 = "Ehan Ganteng";
  late String backupnama;

  void gantiUser() {
    setState(() {
      backup = gambar1;
      gambar1 = gambar2;
      gambar2 = backup;

      backupnama = nama1;
      nama1 = nama2;
      nama2 = backupnama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Sidebar (Drawer)"),
        backgroundColor: Colors.red[700],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(nama1),
              accountEmail: const Text("rhaihanadit@gmail.com"),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          DetailDrawer(nama: nama1, gambar: gambar1)));
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(gambar1),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/25/43/c0/2543c003151fef390ec7efa5381cdb63.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: [
                GestureDetector(
                  onTap: gantiUser,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(gambar2),
                  ),
                ),
              ],
            ),
            const ListTile(
              title: Text("Settings"),
              trailing: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
