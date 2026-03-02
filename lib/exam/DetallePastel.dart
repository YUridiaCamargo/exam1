import 'package:flutter/material.dart';
import 'PastelData.dart';

class DetallePastel extends StatelessWidget {
  const DetallePastel({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as PastelData;

    return Scaffold(
      backgroundColor: data.colorFondo,
      appBar: AppBar(
        title: const Text("COURSE", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.account_circle, color: Colors.black, size: 35), onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(14)), child: Image.network(data.imagen, height: 200, width: double.infinity, fit: BoxFit.cover)),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(data.titulo, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            _lesson("01: Introduction", data.info, true),
          ],
        ),
      ),
    );
  }

  Widget _lesson(String t, String st, bool active) {
    return ListTile(
      leading: const Icon(Icons.play_circle_fill, size: 40),
      title: Text(t, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(st),
    );
  }
}