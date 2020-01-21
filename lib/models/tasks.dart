import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
