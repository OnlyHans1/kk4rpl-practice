import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/widgets/komputer_pages.dart' as komputer;
import 'package:kk4rpl_project/ui/widgets/headset_pages.dart' as headset;
import 'package:kk4rpl_project/ui/widgets/radio_pages.dart' as radio;
import 'package:kk4rpl_project/ui/widgets/smartphone_pages.dart' as smartphone;

class ImagePages extends StatefulWidget {
  const ImagePages({super.key});

  @override
  State<ImagePages> createState() => _ImagePagesState();
}

class _ImagePagesState extends State<ImagePages> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(Icons.computer),
              text: "Komputer",
            ),
            Tab(
              icon: Icon(Icons.headset),
              text: "Headset",
            ),
            Tab(
              icon: Icon(Icons.radio),
              text: "Radio",
            ),
            Tab(
              icon: Icon(Icons.smartphone),
              text: "Smartphone",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          smartphone.Smartphone(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.amber,
        child: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.headset),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
            Tab(
              icon: Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
