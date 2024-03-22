import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {

  int selectedIndex = 3;
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
        title: Text(
          'Imagenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
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

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/img/coche.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Batimovil',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack imageWeb() {
    return Stack(
      children: <Widget>[
        const Center(
            child: CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 19, 238, 201),
              color: Color.fromARGB(194, 58, 251, 55),
            ),
        ),

        Center(
          child: SizedBox(
            height: 450,
            width: 450,
            child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://thehappening.com/wp-content/uploads/2022/05/pugs-3.jpg'),
            // Para Mostrar Una Imagen de la web
            // Image.network(
            //   ), 
          ),
        ),
      ],
    );
  }
}
