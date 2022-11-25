import 'package:flutter/material.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/screens/perfil/nuevo_producto.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/bottom_menu/bottom_menu.dart';
import 'package:la_compra/ui/widgets/info_producto/info_producto.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  State<PerfilScreen> createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<String> productos = infoProductos.entries
      .map((producto) => producto.value['nombre']!.toString())
      .toList();
  String productoActual = 'Café';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Perfil"),
          bottom: TabBar(
            controller: _tabController,
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
          controller: _tabController,
          children: [
            Container(
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nombre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Elyar Alberto López Dávila',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Correo electrónico',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'elyar.rt.spdr@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Tipo de usuario',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Vendedor',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            ListView(
              children: const [
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
                InfoProducto(
                  tipoInfo: TipoInfo.perfil,
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: _bottomButton(),
        bottomNavigationBar: const BottomMenu(selected: 2,),
      ),
    );
  }

  Widget? _bottomButton() {
    return _tabController.index == 0
        ? null
        : FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text('Registrar nuevo producto'),
                    content: NuevoProducto(
                        productoInicial: productos[0],
                        productosIniciales: productos,
                        callback: (String? newValue) {
                          setState(() {
                            productoActual = newValue!;
                          });
                        }),
                    actions: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {},
                        child: Text('Registrar'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.add,
              size: 20.0,
            ),
          );
  }
}
