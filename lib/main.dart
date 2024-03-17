import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Tareas"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
