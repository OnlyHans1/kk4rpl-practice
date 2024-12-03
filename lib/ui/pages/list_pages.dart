import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/widgets/custom_button.dart';

class ListPages extends StatelessWidget {
  const ListPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Pages Flutter'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const CustomButton(
            text: 'Appbar Page',
            icon: Icons.app_registration,
            route: '/AppbarPage',
            buttonColor: Colors.red,
          ),
          const CustomButton(
            text: 'Card Page',
            icon: Icons.credit_card,
            route: '/CardPage',
            buttonColor: Colors.green,
          ),
          const CustomButton(
            text: 'Image Page',
            icon: Icons.image,
            route: '/ImagePage',
            buttonColor: Colors.purple,
          ),
          const CustomButton(
            text: 'Navigation Page',
            icon: Icons.navigation,
            route: '/Navigation',
            buttonColor: Colors.orange,
          ),
          const CustomButton(
            text: 'Tabbar Page',
            icon: Icons.tab,
            route: '/TabbarPage',
            buttonColor: Colors.teal,
          ),
          const CustomButton(
            text: 'Style Page',
            icon: Icons.style,
            route: '/StylePage',
            buttonColor: Colors.indigo,
          ),
          const CustomButton(
            text: 'List View Page',
            icon: Icons.style,
            route: '/ListView',
            buttonColor: Colors.blue,
          ),
          CustomButton(
            text: 'List View Json Page',
            icon: Icons.style,
            route: '/ListViewJson',
            buttonColor: Colors.blueGrey[300],
          ),
        ],
      ),
    );
  }
}