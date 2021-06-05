import 'package:flutter/material.dart';
import 'package:tudu/widgets/tasktile.dart';
import 'package:tudu/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskname: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (newValue) {
                taskData.checkTask(taskData.tasks[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
              isEmpty: taskData.length == 0,
            );
          },
          itemCount: taskData.length,
        );
      },
    );
  }
}
