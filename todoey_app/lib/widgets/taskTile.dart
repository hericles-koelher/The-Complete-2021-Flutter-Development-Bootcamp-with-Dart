import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskDescription;
  final bool isChecked;
  final Function(bool) onToggle;

  TaskTile({this.taskDescription, this.isChecked, this.onToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskDescription,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onToggle,
      ),
    );
  }
}
