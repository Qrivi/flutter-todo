import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class AppState extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy coco'),
    Task(name: 'Buy banana'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
    this.notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    this.notifyListeners();
  }

  int amountOfTasks() {
    return _tasks.length;
  }
}
