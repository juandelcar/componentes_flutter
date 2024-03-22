import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final bool valueSwitch;
  final bool isChecked1;
  final bool isChecked2;
  final bool isChecked3;
  final double valueSlider;
  final int selectedRadioOption;
  final String textInput;

  const DataScreen({
    super.key,
    required this.valueSwitch,
    required this.isChecked1,
    required this.isChecked2,
    required this.isChecked3,
    required this.valueSlider,
    required this.selectedRadioOption,
    required this.textInput,
  });

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
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
      Navigator.push(
        context,
        ruta,
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Guardados'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.lightTheme.primaryColorLight,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black54,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
            ),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
            ),
            label: 'Salir',
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyLarge,
      ),

      body: Padding(
                padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${widget.textInput}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('¿Te gusta Flutter?: ${widget.valueSwitch ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('¿Qué tanto te gusta Flutter?: ${widget.valueSlider}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('Preferencia de desarrollo móvil: ${widget.selectedRadioOption == 1 ? "Kotlin" : "Flutter"}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('Navegador: ${widget.isChecked1 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('Emulador: ${widget.isChecked2 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineMedium),
            Text('Smartphone: ${widget.isChecked3 ? "Sí" : "No"}', style: AppTheme.lightTheme.textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}