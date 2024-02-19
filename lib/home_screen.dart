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
          children:[
               ListTile(
                leading: const  Icon(Icons.water_drop, color: Colors.blue,),
                  title: Text('Gotita', 
                  style:Theme.of(context).textTheme.headlineLarge,
                  ),
                subtitle: const Text('De Agua'), 
                trailing: const Icon(Icons.arrow_circle_down),
              ),
              const Divider(),
               ListTile(
                leading:  Icon(Icons.water_drop_outlined, color: Colors.blue,),
                title:Text('Gotita', 
                style: Theme.of(context).textTheme.headlineLarge,
                  ),
                subtitle: const Text('De Leche'), 
                trailing: const Icon(Icons.arrow_circle_down),
              ),
              const Divider(),
               ListTile(
                leading: const Icon(Icons.water_drop, color: Colors.blue,),
                  title:Text('Gotita',
                  style:Theme.of(context).textTheme.headlineLarge,
                  ),
                subtitle: const Text('De Petroleo'), 
                trailing: const Icon(Icons.arrow_circle_down),
              ),
               const Divider()
          ]
        ),
      );
  }
}