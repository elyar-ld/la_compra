import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:la_compra/ui/screens/acerca_screen/acerca_screen.dart';
import 'package:la_compra/ui/screens/favoritos/favoritos_screen.dart';
import 'package:la_compra/ui/screens/home_screen/home_screen.dart';
import 'package:la_compra/ui/screens/iniciarsesion_screen/iniciarsesion_screen.dart';
import 'package:la_compra/ui/screens/perfil/perfil_screen.dart';
import 'package:la_compra/ui/screens/registrarse_screen/registro_screen.dart';
import 'package:la_compra/ui/theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      title: 'La Compra',
      theme: lightTheme,
      initialRoute: 'iniciarsesion',
      routes: {
        'iniciarsesion': (context) => const IniciarsesionScreen(),
        'registro': (context) => const RegistroScreen(),
        'inicio': (context) => const HomeScreen(),
        'perfil': (context) => const PerfilScreen(),
        'favoritos': (context) => const FavoritosScreen(),
        'acerca': (context) => const AcercaScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
