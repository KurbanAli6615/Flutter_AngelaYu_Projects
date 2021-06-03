import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe_list/Models/task_data.dart';
import 'package:todoe_list/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkBoxCallBack: (checkBoxState) {
                // setState(
                //   () {
                //     Provider.of<TaskData>(context).tasks[index].isDone =
                //         checkBoxState;
                //   },
                // );
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      },
    );
  }
}
