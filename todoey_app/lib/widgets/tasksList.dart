import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/taskData.dart';
import 'package:todoey_app/widgets/taskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskDescription: taskData.tasks[index].taskDescription,
              isChecked: taskData.tasks[index].isChecked,
              onToggle: (newValue) {
                taskData.toggleTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
