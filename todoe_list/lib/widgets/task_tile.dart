import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  var checkBoxCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
