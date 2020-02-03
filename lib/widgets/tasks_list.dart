import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_state.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(builder: (context, state, child) {
      return ListView.builder(
        padding: EdgeInsets.only(top: 20, right: 30, bottom: 90, left: 30),
        itemCount: state.amountOfTasks(),
        itemBuilder: (context, index) {
          return TasksTile(
            title: state.tasks[index].name,
            isChecked: state.tasks[index].isDone,
            checkboxCallback: (bool checkboxState) {
              state.toggleTask(index);
            },
          );
        },
      );
    });
  }
}
