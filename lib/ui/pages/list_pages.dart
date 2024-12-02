import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/widgets/custom_button.dart';

class ListPages extends StatelessWidget {
  const ListPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practice Pages'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          CustomButton(
            text: 'Appbar Page',
            icon: Icons.app_registration,
            route: '/AppbarPage',
            buttonColor: Colors.red,
          ),
          CustomButton(
            text: 'Card Page',
            icon: Icons.credit_card,
            route: '/CardPage',
            buttonColor: Colors.green,
          ),
          CustomButton(
            text: 'Image Page',
            icon: Icons.image,
            route: '/ImagePage',
            buttonColor: Colors.purple,
          ),
          CustomButton(
            text: 'Navigation Page',
            icon: Icons.navigation,
            route: '/Navigation',
            buttonColor: Colors.orange,
          ),
          CustomButton(
            text: 'Tabbar Page',
            icon: Icons.tab,
            route: '/TabbarPage',
            buttonColor: Colors.teal,
          ),
          CustomButton(
            text: 'Style Page',
            icon: Icons.style,
            route: '/StylePage',
            buttonColor: Colors.indigo,
          ),
        ],
      ),
    );
  }
}