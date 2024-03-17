import 'package:flutter/material.dart';
import 'package:lista_de_tareas/views/widgets/taskpage.dart';

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
          body: TaskPage()),
    );
  }
}
