import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_helpers.dart';

Color primaryColor = const Color(0xFFCA281D);
MaterialColor primaryMaterialColor = createMaterialColor(primaryColor);

ThemeData lightTheme = ThemeData(
  //fontFamily: 'kayak',
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primaryMaterialColor,
  ),
  primaryColor: primaryColor,
  textTheme: GoogleFonts.comfortaaTextTheme(),
  scaffoldBackgroundColor: const Color(0xFFF0F0F0),
);
