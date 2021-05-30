import 'package:flutter/material.dart';
import 'package:tudu/widgets/tasktile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TaskTile(), TaskTile(), TaskTile()],
    );
  }
}
