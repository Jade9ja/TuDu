import 'package:flutter/material.dart';
import 'package:tudu/widgets/tasktile.dart';
import 'package:tudu/models/task.dart';

class TaskList extends StatefulWidget {
  TaskList({this.tasks});
  final List<Task> tasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskname: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (newValue) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
