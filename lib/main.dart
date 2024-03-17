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
        body: ListView(
          children: [
            // Aquí puedes agregar ListTile para representar tus tareas
            ListTile(
              title: Text('Tarea 1'),
            ),
            ListTile(
              title: Text('Tarea 2'),
            ),
            ListTile(
              title: Text('Tarea 3'),
            ),
            // Puedes agregar más ListTiles según sea necesario
          ],
        ),
      ),
    );
  }
}
