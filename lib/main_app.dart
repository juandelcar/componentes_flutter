import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 38, 250, 253),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(84, 43, 29, 245)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(232, 31, 240, 191),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        ),
      ),
    );
  }
}
