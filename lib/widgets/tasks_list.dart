import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20, right: 30, bottom: 90, left: 30),
      children: <Widget>[
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
