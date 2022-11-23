import 'package:flutter/material.dart';
import 'package:la_compra/ui/screens/favoritos/favoritos_screen.dart';
import 'package:la_compra/ui/screens/perfil/perfil_screen.dart';
import 'package:la_compra/ui/theme/icomoon_icons.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu_item.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      child: Container(
        height: bottomMenuHeight,
        color: Theme.of(context).primaryColor,
        child: Row(
          children: [
            BottomMenuItem(
              icon: Icomoon.bascula,
              tag: 'Compras',
              selected: true,
              callback: () {},
            ),
            BottomMenuItem(
              icon: Icons.star,
              tag: 'Favoritos',
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
