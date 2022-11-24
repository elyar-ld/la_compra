import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/screens/lista_productos/lista_productos.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';

import '../../widgets/bottom_menu/bottom_menu.dart';
import 'menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/laCompra-logo-blanco.svg',
          width: 120,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'acerca');
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: infoProductos.entries
              .map((producto) => MenuButton(
                  text: producto.value['nombre']!,
                  icon: producto.value['icono'],
                  color: producto.value['color']!,
                  callback: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            ListaProductos(producto: producto.key),
                      ),
                    );
                  }))
              .toList(),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
