import 'package:flutter/foundation.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(taskDescription: "VA A MERDA")];

  int get taskCount => tasks.length;

  void addTask(String taskDescription) {
    tasks.add(
      Task(taskDescription: taskDescription),
    );
    notifyListeners();
  }

  void toggleTask(int index) {
    tasks[index].toggle();
    notifyListeners();
  }
}
