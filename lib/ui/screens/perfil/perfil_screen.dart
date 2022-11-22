import 'package:flutter/material.dart';
import 'package:la_compra/ui/widgets/info_producto/info_producto.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Mis datos',
              ),
              Tab(
                text: 'Mis compras',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            ListView(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
                Align(
                    alignment: Alignment.center,
                    child: InfoProducto(
                      tipoInfo: TipoInfo.perfil,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
