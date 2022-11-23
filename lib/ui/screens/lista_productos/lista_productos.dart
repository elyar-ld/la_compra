import 'package:flutter/material.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/screens/lista_productos/search_bar.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu.dart';
import 'package:la_compra/ui/widgets/info_producto/info_producto.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';

class ListaProductos extends StatefulWidget {
  final String producto;

  const ListaProductos({Key? key, required this.producto}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              infoProductos[widget.producto]!['icono'],
              size: 40,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Mostrando: todos',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
                InfoProducto(tipoInfo: TipoInfo.producto,),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
