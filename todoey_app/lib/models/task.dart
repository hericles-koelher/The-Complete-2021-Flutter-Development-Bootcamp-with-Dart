class Task {
  final String taskDescription;
  bool isChecked;

  Task({this.taskDescription, this.isChecked = false});

  void toggle() => isChecked = !isChecked;
}
