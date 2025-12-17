import 'package:flutter/material.dart';
import 'package:_9504022/home.dart';
class HomePage extends StatelessWidget {
  final String title ;
  const HomePage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("$title"),
      ),
    );
  }
}