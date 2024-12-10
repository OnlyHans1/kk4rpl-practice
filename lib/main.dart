import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/pages/drawer_pages.dart';
import 'package:kk4rpl_project/ui/pages/form_pages.dart';
import 'package:kk4rpl_project/ui/pages/gradient_pages.dart';
import 'package:kk4rpl_project/ui/pages/gridview_pages.dart';
import 'package:kk4rpl_project/ui/pages/list_view_json_pages.dart';
import 'package:kk4rpl_project/ui/pages/list_view_pages.dart';
import 'package:kk4rpl_project/ui/pages/navigation_pages.dart';
import 'package:kk4rpl_project/ui/pages/appbar_pages.dart';
import 'package:kk4rpl_project/ui/pages/card_pages.dart';
import 'package:kk4rpl_project/ui/pages/image_pages.dart';
import 'package:kk4rpl_project/ui/pages/snackbar_pages.dart';
import 'package:kk4rpl_project/ui/pages/tabbar_pages.dart';
import 'package:kk4rpl_project/ui/pages/style_pages.dart';
import 'package:kk4rpl_project/ui/pages/list_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HalHallo(),
      routes: <String, WidgetBuilder>{
        '/ListPages': (BuildContext context) => const ListPages(),
        '/Navigation': (BuildContext context) => const NavigationPages(),
        '/Route': (BuildContext context) => const RoutesPages(),
        '/AppbarPage': (BuildContext context) => const AppbarPages(),
        '/CardPage': (BuildContext context) => const CardPages(),
        '/ImagePage': (BuildContext context) => const ImagePages(),
        '/TabbarPage': (BuildContext context) => const TabbarPages(),
        '/StylePage': (BuildContext context) => const StylePages(),
        '/ListView': (BuildContext context) => const ListViewPages(),
        '/ListViewJson': (BuildContext context) => const ListViewJsonPages(),
        '/SnackbarPage': (BuildContext context) => const SnackbarPages(),
        '/DrawerPage' : (BuildContext context) => const DrawerPages(),
        '/GridViewPage' : (BuildContext context) => const GridViewPage(),
        '/GradientPage' : (BuildContext context) => const GradientPages(),
        '/FormPage' : (BuildContext context) => const FormPages(),
      },
    );
  }
}

class HalHallo extends StatelessWidget {
  const HalHallo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ListPages');
              },
              child: const Text('Go to List Pages'),
            ),
          ],
        ),
      ),
    );
  }
}
