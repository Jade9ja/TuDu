import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskname, this.isChecked, this.checkboxCallback});
  final bool isChecked;
  final String taskname;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
  }
}
