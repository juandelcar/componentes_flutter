import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
      child: Text("Notificaciones"),
    );
  }
}