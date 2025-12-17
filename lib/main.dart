

import 'package:_9504022/deconnection.dart';
import 'package:_9504022/detail.dart';
import 'package:_9504022/listeLivre.dart';
import 'package:flutter/material.dart';




import 'login.dart'; // Assure-toi que le fichier existe bien

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeconnexionPage(  ), // ⚠ LA LIGNE LA PLUS IMPORTANTE
    
    );
  }
}