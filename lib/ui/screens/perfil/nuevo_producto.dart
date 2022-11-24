import 'package:flutter/material.dart';
import 'package:la_compra/ui/widgets/text_dropdown.dart';
import 'package:la_compra/ui/widgets/text_input.dart';

class NuevoProducto extends StatelessWidget {
  final String productoInicial;
  final List<String> productosIniciales;
  final void Function(String?)? callback;

  const NuevoProducto(
      {Key? key,
      required this.productoInicial,
      required this.productosIniciales,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column(
        children: [
          TextDropdown(
            tag: 'Producto:',
            currentValue: productoInicial,
            dpvalues: productosIniciales,
            dpCallback: callback,
          ),
          SizedBox(height: 15,),
          TextInput(tag: 'Precio', ktype: TextInputType.text, isObscure: false,),
          SizedBox(height: 15,),
          TextInput(tag: 'Unidad de medida', ktype: TextInputType.text, isObscure: false,),
          SizedBox(height: 15,),
          TextInput(tag: 'Nombre de la compra', ktype: TextInputType.text, isObscure: false,),
          SizedBox(height: 15,),
          TextInput(tag: 'Ubicación', ktype: TextInputType.text, isObscure: false,),
          SizedBox(height: 15,),
          TextInput(tag: 'Variedad', ktype: TextInputType.text, isObscure: false,),
        ],
      ));
  }
}
