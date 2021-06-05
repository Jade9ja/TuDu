import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.taskname,
      this.isChecked,
      this.checkboxCallback,
      this.longPressCallback,
      this.isEmpty});
  final bool isChecked;
  final String taskname;
  final Function checkboxCallback;
  final Function longPressCallback;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    print(isEmpty);
    Widget viewTask = isEmpty
        ? ListTile(
            title: Text(
              'Wow! Such empty...',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          )
        : ListTile(
            onLongPress: longPressCallback,
            title: Text(
              taskname,
              style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              activeColor: Colors.lightBlueAccent,
              value: isChecked,
              onChanged: checkboxCallback,
            ),
          );

    return viewTask;
  }
}
