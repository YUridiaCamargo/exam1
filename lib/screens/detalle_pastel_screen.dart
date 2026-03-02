import 'package:flutter/material.dart';
import '../models/pastel_data.dart';

class DetallePastel extends StatelessWidget {
  const DetallePastel({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as PastelData;
    return Scaffold(
      backgroundColor: data.colorFondo,
      appBar: AppBar(title: const Text("COURSE"), backgroundColor: Colors.white, foregroundColor: Colors.black),
      body: Center(child: Text("Información de ${data.titulo}")),
    );
  }
}
