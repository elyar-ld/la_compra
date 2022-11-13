import 'package:flutter/material.dart';
import 'package:la_compra/ui/screens/home_screen/home_screen.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';
import 'package:la_compra/ui/widgets/main_button.dart';
import 'package:la_compra/ui/widgets/social_button.dart';
import 'package:la_compra/ui/widgets/text_input.dart';

class IniciarsesionScreen extends StatelessWidget {
  const IniciarsesionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 300,
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
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
                      tag: 'Contraseña:',
                      ktype: TextInputType.none,
                      isObscure: true),
                  const SizedBox(
                    height: 15,
                  ),
                  MainButton(
                    tag: 'Iniciar sesión', 
                    myFunction: (){
                      Navigator.of(context).pushNamedAndRemoveUntil('inicio', (Route route) => false);
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Text('O iniciar sesión con'),
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
              const Text('¿Aun no tienes cuenta?'),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('registro', (Route route) => false);
                },
                child: Text(
                  'Registrarme',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
