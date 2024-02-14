import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const[
              ListTile(
                leading: Icon(Icons.water_drop, color: Colors.blue,),
                  title:Text('Gotita',
                style: TextStyle(color: Colors.blue, 
                fontWeight:FontWeight.bold),
                ),
                subtitle: Text('De Agua'), 
                trailing: Icon(Icons.arrow_circle_down),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.water_drop_outlined, color: Colors.blue,),
                title:Text('Gotita',
                style: TextStyle(color: Colors.lightBlueAccent, 
                fontWeight:FontWeight.bold),
                ),
                subtitle: Text('De Leche'), 
                trailing: Icon(Icons.arrow_circle_down),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.water_drop, color: Colors.blue,),
                  title:Text('Gotita',
                style: TextStyle(color: Colors.blue, 
                fontWeight:FontWeight.bold),
                ),
                subtitle: Text('De Petroleo'), 
                trailing: Icon(Icons.arrow_circle_down),
              )
          ]
        ),
      );
  }
}