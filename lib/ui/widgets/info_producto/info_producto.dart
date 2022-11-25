import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:la_compra/ui/constants/constants_productos.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/info_producto/tipo_info.dart';
import 'package:la_compra/ui/widgets/main_button.dart';
import 'package:la_compra/ui/widgets/text_input.dart';

class InfoProducto extends StatefulWidget {
  final TipoInfo tipoInfo;

  const InfoProducto({Key? key, required this.tipoInfo}) : super(key: key);

  @override
  _InfoProductoState createState() => _InfoProductoState();
}

class _InfoProductoState extends State<InfoProducto> {
  bool thumbUpActive = false;
  bool thumbDownActive = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
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
                  style: TextStyle(fontSize: 14),
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
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text('Mata Obscura, Totutla, Ver.'),
                                ),
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
                                style: TextStyle(fontSize: 20),
                              ),
                              Text('kilo'),
                              if (widget.tipoInfo == TipoInfo.perfil)
                                const Icon(
                                  Icons.edit,
                                  size: 35,
                                ),
                              if (widget.tipoInfo != TipoInfo.perfil)
                                const Icon(
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
                        Container(
                            width: double.infinity,
                            child: Text(
                              'Precio reportado el 04 - Octubre - 2022',
                              textAlign: TextAlign.end,
                            )),
                        if (widget.tipoInfo != TipoInfo.perfil)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('¿El precio es correcto?'),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (thumbDownActive)
                                      thumbDownActive = !thumbDownActive;
                                    thumbUpActive = !thumbUpActive;
                                  });
                                },
                                child: Icon(
                                  Icons.thumb_up,
                                  size: 20,
                                  color:
                                      thumbUpActive ? Color(0xFFA82018) : null,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (thumbUpActive)
                                      thumbUpActive = !thumbUpActive;
                                    thumbDownActive = !thumbDownActive;
                                  });
                                  if (thumbDownActive) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text('Informar precio'),
                                          content: Text(
                                              '¿Quieres informarnos el precio actual?'),
                                          actions: [
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.black,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('No'),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor: primaryColor,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                _showInformarPrecioDialog();
                                              },
                                              child: Text('Sí'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Icon(
                                  Icons.thumb_down,
                                  size: 20,
                                  color: thumbDownActive
                                      ? Color(0xFFA82018)
                                      : null,
                                ),
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
      ),
    );
  }

  _showInformarPrecioDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              title: Text('Informar precio'),
              content: const TextInput(
                  tag: 'Precio', ktype: TextInputType.number, isObscure: false),
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
                  child: Text('Enviar'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
