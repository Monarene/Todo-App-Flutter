import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyy/models/task_data.dart';
import 'package:todoeyy/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
                taskTile: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
