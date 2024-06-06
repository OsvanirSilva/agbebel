import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:agbebel/firebase_options.dart';


// Paginas do Projeto
import 'package:agbebel/view/sobre.dart';
import 'package:agbebel/view/inicial.dart';
import 'package:agbebel/widgets/navBar.dart';

Future<void> main() async {
  //
  // FireBase
  //
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      //Rotas de navegação
      initialRoute: 'inicial',
      routes: {
        'inicial': (context) => const inicial(),
        'navBar': (context) => const navBar(),
        'sobre':(context) => const sobre(),
      },
    );
  }
}
