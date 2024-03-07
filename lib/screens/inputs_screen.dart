import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entradas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Qué usas para correr tus apps de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            const ElevatedButton(onPressed: null, child: Text('Guardar'))
          ],
        ),
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
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: "Escribe tu nombre:",
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const FlutterLogo(),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              print('Estado del switch: $valueSwitch');
            });
          },
        )
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Que tanto te gusta flutter',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0.0,
            max: 10.0,
            value: valueSlider,
            activeColor: AppTheme.mainColor,
            inactiveColor: Colors.grey,
            thumbColor: Colors.red,
            label: '${valueSlider.round()}',
            divisions: 10,
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                print('Valor del slider: $valueSlider');
              });
            })
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          "¿Que prefieres usar para el desarrollo movil?",
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                  print('Opción Seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                  print('Opción Seleccionada: $selectedRadioOption');
                });
              },
            ),
          ),
        )
      ],
    );
  }

  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
            value: isChecked1,
            onChanged: (value) {
              setState(() {
                isChecked1 = value!;
                print('Valor de Navegador: isChecked1');
              });
            }),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(() {
                isChecked2 = value!;
                print('Valor de Emulador: isChecked2');
              });
            }),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
            value: isChecked3,
            onChanged: (value) {
              setState(() {
                isChecked3 = value!;
                print('Valor de Smartphone: isChecked3');
              });
            }),
      ],
    );
  }
}
