import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
