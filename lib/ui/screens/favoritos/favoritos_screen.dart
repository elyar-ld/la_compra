import 'package:flutter/material.dart';
import 'package:la_compra/ui/widgets/info_producto/info_producto.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';

import '../../widgets/bottom_menu/bottom_menu.dart';

class FavoritosScreen extends StatelessWidget {
const FavoritosScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: ListView(
        children: const[
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
          InfoProducto(tipoInfo: TipoInfo.favorito),
        ],
      ),
      bottomNavigationBar: const BottomMenu(selected: 1,),
    );
  }
}