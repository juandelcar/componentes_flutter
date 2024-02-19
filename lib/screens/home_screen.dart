import 'package:flutter/material.dart';

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
          leading: const Icon(
            Icons.input_rounded,
            color: Colors.black,
          ),
          title: Text(
            'Entradas',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: const Text('Diferentes widgets para entradas de flutter'),
          trailing: const Icon(Icons.arrow_circle_right),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.list_alt_rounded,
            color: Colors.black,
          ),
          title: Text(
            'ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: const Text('Scroll Infinito'),
          trailing: const Icon(Icons.arrow_circle_right),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.notification_add_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Notificaciones',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          subtitle: const Text('Creación de Notificaciones'),
          trailing: const Icon(Icons.arrow_circle_right),
        ),
        const Divider()
      ]),
    );
  }
}
