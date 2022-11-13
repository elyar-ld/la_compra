import 'package:flutter/material.dart';

import 'menu_button.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Compra'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.info))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(text: 'Café', icon: Icons.coffee, color: Theme.of(context).primaryColor),
            const MenuButton(text: 'Limón', icon: Icons.store, color: Color(0xFF238A4C)),
            const MenuButton(text: 'Aguacate', icon: Icons.archive_outlined, color: Color.fromARGB(255, 44, 57, 31)),
            const MenuButton(text: 'Chayote', icon: Icons.chair, color: Color(0xFF71A53E)),
            const MenuButton(text: 'Macadamia', icon: Icons.nature, color: Color(0xFFCC6E18)),
            const MenuButton(text: 'Pimienta', icon: Icons.people_sharp, color: Color(0xFF343434)),
          ],
        ),
      ),
    );
  }
}
