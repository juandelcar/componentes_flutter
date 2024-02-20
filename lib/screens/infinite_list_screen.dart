import 'package:flutter/material.dart';

class InfinitListScreen extends StatefulWidget {
  const InfinitListScreen({super.key});

  @override
  State<InfinitListScreen> createState() => _InfinitListScreenState();
}

class _InfinitListScreenState extends State<InfinitListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Lista Infinita"),
    );
  }
}