import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';

class InfoProducto extends StatefulWidget {
  final TipoInfo tipoInfo;

  const InfoProducto({Key? key, required this.tipoInfo}) : super(key: key);

  @override
  _InfoProductoState createState() => _InfoProductoState();
}

class _InfoProductoState extends State<InfoProducto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: 315,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xFFA5A5A5)),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            if (widget.tipoInfo != TipoInfo.producto)
              Container(
                alignment: Alignment.centerLeft,
                height: 18,
                width: 315,
                decoration: BoxDecoration(
                    color: infoProductos['cafe']!['color'],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Café',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: DefaultTextStyle.merge(
                style: TextStyle(fontSize: 16),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Don Manuel',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text('Mata Obscura, Totutla, Ver.'),
                              Text('Café cereza'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: [
                            Text(
                              '\$ 999.50',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text('kilo'),
                            Icon(
                              Icons.star,
                              size: 35,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xFFA5A5A5), width: 1))),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: DefaultTextStyle.merge(
                  style: TextStyle(color: Color(0xFFA5A5A5), fontSize: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Precio reportado el 04 - Octubre - 2022'),
                      if (widget.tipoInfo != TipoInfo.perfil)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('¿El precio es correcto?'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(Icons.thumb_up,
                                  size: 20, color: Color(0xFFA82018)),
                            ),
                            Icon(
                              Icons.thumb_down,
                              size: 20,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
