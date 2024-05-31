import 'package:flutter/material.dart';
import 'package:todo_flutter/model/task.dart';
import '../widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {
  final Function? newTaskCallback;
  AddTaskScreen({this.newTaskCallback});
  @override
  Widget build(BuildContext context) {
    String newTaskText = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w700)),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskText = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  newTaskCallback!(newTaskText);
                },
                child: Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
