import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_state.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (context) => AppState(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
