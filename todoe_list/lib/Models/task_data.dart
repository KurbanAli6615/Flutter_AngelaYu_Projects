import 'package:flutter/foundation.dart';
import 'package:todoe_list/Models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "milk"),
    Task(name: "egg"),
    Task(name: "bread"),
    Task(name: "egg"),
    Task(name: "egg"),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = new Task(name: "newTaskTitle");
    tasks.add(task);
    notifyListeners();
  }
}
