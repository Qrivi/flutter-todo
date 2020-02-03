import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final String title;
  final Function checkboxCallback;
  final bool isChecked;

  TasksTile({@required this.title, @required this.checkboxCallback, this.isChecked = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.title),
      contentPadding: EdgeInsets.all(0),
      trailing: Checkbox(
        value: this.isChecked,
        onChanged: this.checkboxCallback,
      ),
    );
  }
}
