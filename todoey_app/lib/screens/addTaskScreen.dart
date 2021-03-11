import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/taskData.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller;

  AddTaskScreen() : _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var tasksProvider = Provider.of<TaskData>(context);

    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            controller: _controller,
          ),
          FlatButton(
            onPressed: () {
              //addTask(_controller.value.text);
              tasksProvider.addTask(_controller.text);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}
