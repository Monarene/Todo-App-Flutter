import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/models/task_data.dart';
import 'package:todoeyy/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTile: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkboxState) {
//            setState(() {
//              widget.tasks[index].toggleDone();
//            });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
