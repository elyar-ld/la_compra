import 'package:flutter/material.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu.dart';

class ListaProductos extends StatefulWidget {
  final String producto;
  
  const ListaProductos({ Key? key, required this.producto }) : super(key: key);

  @override
  _ListaProductosState createState() => _ListaProductosState();
}

class _ListaProductosState extends State<ListaProductos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(infoProductos[widget.producto]!['nombre']),
        backgroundColor: infoProductos[widget.producto]!['color'],
        actions: [
          Icon(
            infoProductos[widget.producto]!['icono'],
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}