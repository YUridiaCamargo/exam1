import 'package:flutter/material.dart';
import 'package:myapp/screens/canal_pasteles_screen.dart';
import 'package:myapp/screens/detalle_pastel_screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(const RedVelvetApp());
}

class RedVelvetApp extends StatelessWidget {
  const RedVelvetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePasteleria(),
        '/curso': (context) => const DetallePastel(),
        '/canal': (context) => const CanalPasteles(),
      },
    );
  }
}
