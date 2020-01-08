import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final String _placeholder = ([
    'Feed the dog',
    'Feed the cat',
    'Feed the fish',
  ]..shuffle())
      .first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Text(
                  'To do:',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              MaterialButton(
                shape: CircleBorder(),
                color: Colors.red,
                minWidth: 0,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  // nop
                },
              ),
              MaterialButton(
                shape: CircleBorder(),
                color: Colors.teal,
                minWidth: 0,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                onPressed: () {
                  // nop
                },
              ),
            ],
          ),
          TextField(
            autofocus: true,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: _placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
