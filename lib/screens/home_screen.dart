import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(children: [
        ListTile(
        leading: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon (Icons.input_rounded),
          ),
          title: Text(
            'Entradas',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: Text('Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall),
         trailing: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon(Icons.arrow_circle_right),
          ),
          onTap: () {
            final ruta1 = MaterialPageRoute(builder: (context) {
              return const InputsScreen();
            });
            Navigator.push(context, ruta1);
          },
        ),
        const Divider(),
        ListTile(
        leading: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon (Icons.list_alt_rounded),
          ),
          title: Text(
            'ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: Text('Scroll Infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall),
          trailing: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon(Icons.arrow_circle_right),
          ),
           onTap: () {
            final ruta2 = MaterialPageRoute(builder: (context) {
              return const InfinitListScreen();
            });
            Navigator.push(context, ruta2);
          },
        ),
        const Divider(),
        ListTile(
          leading: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon (Icons.notification_add_outlined),
          ),
          title: Text(
            'Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: Text('Creación de Notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall),
          trailing: IconTheme(
            data: AppTheme.lightTheme.iconTheme,
            child: const Icon(Icons.arrow_circle_right),
          ),
           onTap: () {
            final ruta3 = MaterialPageRoute(builder: (context) {
              return const NotificationsScreen();
            });
            Navigator.push(context, ruta3);
          },
        ),
        const Divider()
      ]),
    );
  }
}
