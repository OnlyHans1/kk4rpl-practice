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
            buttonColor: Colors.deepPurple,
          ),
          CustomButton(
            text: 'Card Page',
            icon: Icons.credit_card_rounded,
            route: '/CardPage',
            buttonColor: Colors.green[700],
          ),
          const CustomButton(
            text: 'Image Page',
            icon: Icons.image_outlined,
            route: '/ImagePage',
            buttonColor: Colors.deepOrange,
          ),
          CustomButton(
            text: 'Navigation Page',
            icon: Icons.navigation_rounded,
            route: '/Navigation',
            buttonColor: Colors.amber[700],
          ),
          CustomButton(
            text: 'Tabbar Page',
            icon: Icons.tab_rounded,
            route: '/TabbarPage',
            buttonColor: Colors.teal[600],
          ),
          CustomButton(
            text: 'Style Page',
            icon: Icons.palette_outlined,
            route: '/StylePage',
            buttonColor: Colors.indigo[600],
          ),
          CustomButton(
            text: 'List View Page',
            icon: Icons.view_list_rounded,
            route: '/ListView',
            buttonColor: Colors.blue[700],
          ),
          CustomButton(
            text: 'List View Json Page',
            icon: Icons.data_array_rounded,
            route: '/ListViewJson',
            buttonColor: Colors.blueGrey[600],
          ),
          CustomButton(
            text: 'Input, Alert, Snackbar Page',
            icon: Icons.input_rounded,
            route: '/SnackbarPage',
            buttonColor: Colors.pink[600],
          ),
          CustomButton(
            text: 'Sidebar (Drawer) Page',
            icon: Icons.menu_open_rounded,
            route: '/DrawerPage',
            buttonColor: Colors.grey[700],
          ),
          CustomButton(
            text: 'Grid View Page',
            icon: Icons.grid_view_rounded,
            route: '/GridViewPage',
            buttonColor: Colors.deepPurple[400],
          ),
          CustomButton(
            text: 'Gradient Page',
            icon: Icons.gradient_rounded,
            route: '/GradientPage',
            buttonColor: Colors.deepOrange[400],
          ),
          CustomButton(
            text: 'Form Page',
            icon: Icons.format_list_bulleted_rounded,
            route: '/FormPage',
            buttonColor: Colors.green[600],
          ),
          CustomButton(
            text: 'Animation Page',
            icon: Icons.animation,
            route: '/AnimationPage',
            buttonColor: const Color.fromARGB(255, 5, 3, 105),
          ),
        ],
      ),
    );
  }
}