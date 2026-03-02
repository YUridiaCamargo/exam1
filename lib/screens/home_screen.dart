import 'package:flutter/material.dart';
import '../models/pastel_data.dart';

class HomePasteleria extends StatelessWidget {
  const HomePasteleria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF80AB), // Rosa vibrante
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.account_circle, color: Colors.black, size: 35),
        actions: const [Icon(Icons.notes, color: Colors.black, size: 30), SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Perla Yuridia Terrazas Camargo 6J",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 20),
            // Tarjetas de ejemplo
            Row(
              children: [
                _card(context, '/curso', PastelData(
                  titulo: "RED VELVET", chef: "Jessica A.", duracion: "70 Hours",
                  imagen: "https://raw.githubusercontent.com/YUridiaCamargo/imagenesp/refs/heads/main/tarta-red-velvet.jpg",
                  colorFondo: const Color(0xFFFFEBEE), // Rojo muy claro
                  info: "Secreto del colorante natural.",
                  transcripcion: "Bienvenidos al curso de Red Velvet...",
                  comentario: "Excelente receta Perla."
                )),
                _card(context, '/canal', PastelData(
                  titulo: "COOKIES", chef: "Karla P.", duracion: "10 Mins",
                  imagen: "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=400",
                  colorFondo: const Color(0xFFD7CCC8),
                  info: "Galletas crujientes.",
                  transcripcion: "Hoy haremos galletas de chispas...",
                  comentario: "Me encantaron las galletas."
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context, String route, PastelData data) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, route, arguments: data),
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black)),
          child: Text(data.titulo, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
