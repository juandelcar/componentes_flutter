import 'package:flutter/material.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 29, 245, 245);
  static const backColor = Color.fromARGB(255, 234, 240, 240);

  // Declaraciones del tema claro
  static final ThemeData lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color.fromARGB(232, 20, 21, 21),
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'sans-serif',
      ),
    ),
  );
}
