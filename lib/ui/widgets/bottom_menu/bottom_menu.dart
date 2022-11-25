import 'package:flutter/material.dart';
import 'package:la_compra/ui/screens/favoritos/favoritos_screen.dart';
import 'package:la_compra/ui/screens/home_screen/home_screen.dart';
import 'package:la_compra/ui/screens/perfil/perfil_screen.dart';
import 'package:la_compra/ui/theme/icomoon_icons.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu_item.dart';

class BottomMenu extends StatelessWidget {
  final int selected;
  const BottomMenu({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(selected);
    print(selected==0);
    print(selected==1);
    print(selected==2);
    return DefaultTextStyle.merge(
      child: Container(
        height: bottomMenuHeight,
        color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            BottomMenuItem(
              icon: Icomoon.bascula,
              tag: 'Compras',
              selected: selected == 0,
              callback: () {
                Navigator.pushNamedAndRemoveUntil(context, 'inicio', (route) => false);
              },
            ),
            BottomMenuItem(
              icon: Icons.star,
              tag: 'Favoritos',
              selected: selected == 1,
              callback: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => FavoritosScreen(),
                  ),
                );
              },
            ),
            BottomMenuItem(
              icon: Icons.person,
              tag: 'Perfil',
              selected: selected == 2,
              callback: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => PerfilScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
