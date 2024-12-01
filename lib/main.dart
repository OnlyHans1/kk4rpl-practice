import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/pages/navigation_pages.dart';

void main() {
  runApp(MaterialApp(
    home: const HalHallo(),
    initialRoute: '/Navigation',
    routes: <String, WidgetBuilder>{
      '/Navigation': (BuildContext context) => const NavigationPages(),
      '/Route': (BuildContext context) => const RoutesPages(),
    },
  ));
}

class HalHallo extends StatelessWidget {
  const HalHallo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
      Center(
        child: Text('Hello, World!'),
      ) 
    );
  }
}
