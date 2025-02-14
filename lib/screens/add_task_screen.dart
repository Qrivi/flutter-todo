import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/app_state.dart';
import 'package:todoey/models/task.dart';

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

  TextEditingController _controller = new TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                  Navigator.pop(context);
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
                  Provider.of<AppState>(context, listen: false).addTask(Task(name: this._controller.text));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          TextField(
            autofocus: true,
            maxLines: 1,
            controller: _controller,
            decoration: InputDecoration(
              hintText: _placeholder,
            ),
          ),
        ],
      ),
    );
  }
}
