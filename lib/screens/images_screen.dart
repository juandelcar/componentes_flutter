import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

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
          
        ],
      ),
    );
  }

  Card imageCard() {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
              height: 500,
              width: 500,
              child: Image(
                image: AssetImage('assets/img/coche.jpg'),
        ),
      ), 
    );
  }
}
