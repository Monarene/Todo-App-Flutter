import 'package:flutter/foundation.dart';
import 'package:todoeyy/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fish'),
    Task(name: 'Buy Eggs'),
    Task(
      name: "Buy Rice",
    )
  ];
}
