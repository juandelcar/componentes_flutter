import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 29, 245, 245);
  static const backColor = Color.fromARGB(255, 234, 240, 240);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme:  TextTheme(
      headlineLarge: GoogleFonts.tiltNeon(
        color: const Color.fromARGB(232, 20, 21, 21),
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 1.3,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
