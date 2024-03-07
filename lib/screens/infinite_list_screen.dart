import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';

class InfinitListScreen extends StatefulWidget {
  const InfinitListScreen({super.key});

  @override
  State<InfinitListScreen> createState() => _InfinitListScreenState();
}

class _InfinitListScreenState extends State<InfinitListScreen> {
  int selectedIndex = 0;
  int selectedRadioOption = 0; // Para los RadioButton

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());
      switch (index) {
        case 0:
           ruta =
              MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
           ruta = MaterialPageRoute(
              builder: (context) => const InfinitListScreen());
          break;
        case 2:
           ruta = MaterialPageRoute(
              builder: (context) => const NotificationsScreen());
          break;
        case 3:
           ruta =
              MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
        default:
      }
      selectedIndex = index;
      // print('selectedIndex = $selectedIndex');
      Navigator.push(
        context,
        ruta,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Lista Infinita"),
    );
  }
}