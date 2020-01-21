import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function checkboxCallback;

  TasksTile({this.isChecked, this.taskTile, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
//
//TaskCheckbox(
//checkboxState: isChecked,
//checkboxFunction: ();
//},
//)

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState, this.checkboxFunction});

  final bool checkboxState;
  final Function checkboxFunction;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: checkboxFunction,
    );
  }
}
