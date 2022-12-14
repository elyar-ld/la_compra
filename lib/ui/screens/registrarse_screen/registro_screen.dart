import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/main_button.dart';
import 'package:la_compra/ui/widgets/social_button.dart';
import 'package:la_compra/ui/widgets/text_dropdown.dart';
import 'package:la_compra/ui/widgets/text_input.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  List<String> tiposUsuario = ['Vendedor', 'Comprador'];
  String tipoUsuario = 'Vendedor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 40),
            child: Wrap(
              runSpacing: 25,
              alignment: WrapAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/laCompra-logo.svg',
                  width: 180,
                ),
                const SizedBox(
                    width: 300,
                    child: Text(
                      'Registrarse',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    )),
                Form(
                  child: Column(
                    children: [
                      const TextInput(
                          tag: 'Email:',
                          ktype: TextInputType.visiblePassword,
                          isObscure: false),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextInput(
                          tag: 'Nombre:',
                          ktype: TextInputType.visiblePassword,
                          isObscure: false),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextInput(
                          tag: 'Contrase??a:',
                          ktype: TextInputType.text,
                          isObscure: true),
                      const SizedBox(
                        height: 15,
                      ),
                      TextDropdown(
                        tag: 'Soy:',
                        currentValue: tipoUsuario,
                        dpvalues: tiposUsuario,
                        dpCallback: (String? newValue) {
                          setState(() {
                            tipoUsuario = newValue!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MainButton(
                        tag: 'Registrarme',
                        myFunction: () {
                          //print(dpcurrentValue);
                        },
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Text('O reg??strate con'),
                    SizedBox(
                      height: 15,
                    ),
                    SocialButton(bt: ButtonType.google),
                    SizedBox(
                      height: 8,
                    ),
                    SocialButton(bt: ButtonType.facebook),
                  ],
                ),
                Column(children: [
                  const Text('??Ya tienes cuenta?'),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          'iniciarsesion', (Route route) => false);
                    },
                    child: Text(
                      'Iniciar sesi??n',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
