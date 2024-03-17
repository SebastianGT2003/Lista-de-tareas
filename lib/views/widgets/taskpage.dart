import 'package:flutter/material.dart';
import 'package:lista_de_tareas/models/task.dart';

class TaskPage extends StatefulWidget {
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late TaskModel _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = TaskModel.emty();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _tasks.listTask.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            setState(() {
              _tasks.listTask.removeAt(index);
            });
          },
          child: ListTile(
            title: Text(_tasks.listTask[index].description),
            leading: Checkbox(
              value: _tasks.listTask[index].taskCompleted,
              onChanged: (bool? newValue) {
                setState(() {
                  _tasks.listTask[index].taskCompleted = newValue!;
                });
              },
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _tasks.listTask.removeAt(index);
                });
              },
            ),
          ),
        );
      },
    );
  }
}
