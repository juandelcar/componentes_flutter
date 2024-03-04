import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 29, 245, 245);
  static const backColor = Color.fromARGB(255, 234, 240, 240);
  static const frontColor = Color.fromARGB(255, 71, 234, 210);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black, size: 35.0),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(mainColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(color: Colors.white, fontSize: 22.0)),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.tiltNeon(
        color: const Color.fromARGB(232, 20, 21, 21),
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
        decorationThickness: 1.3,
        fontStyle: FontStyle.italic,
      ),
      headlineMedium: GoogleFonts.tiltNeon(
        color: const Color.fromARGB(232, 20, 21, 21),
        fontSize: 21.5,
        fontWeight: FontWeight.w500,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 1.3,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 15.0,
        decoration: TextDecoration.lineThrough,
        decorationColor: Colors.black,
      ),
         bodyMedium: GoogleFonts.dangrek( // theNautigal - Letra cursiva 
        fontWeight: FontWeight.w500, // Cambia el estilo de la fuente
        color: backColor, 
      )

    ),
  );
}
