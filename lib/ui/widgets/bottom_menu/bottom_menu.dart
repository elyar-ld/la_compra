import 'package:flutter/material.dart';
import 'package:la_compra/ui/theme/icomoon_icons.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu_item.dart';

class BottomMenu extends StatelessWidget {
const BottomMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return DefaultTextStyle.merge(
      child: Container(
        height: bottomMenuHeight,
        color: Theme.of(context).primaryColor,
        
        child: Row(
          children: const [
            BottomMenuItem(icon: Icomoon.bascula, tag: 'Compras', selected: true,),
            BottomMenuItem(icon: Icons.star, tag: 'Favoritos',),
            BottomMenuItem(icon: Icons.person, tag: 'Perfil'),
          ],
        ),
      ),
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}