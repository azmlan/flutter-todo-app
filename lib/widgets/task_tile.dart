import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTile;
  final bool? isChecked;
  final Function? checkBoxCallback;
  TaskTile({required this.taskTile, this.isChecked, this.checkBoxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      // trailing is: the end of the horizontal layout of the List
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blueAccent,
        onChanged: (value) {
          checkBoxCallback!(value);
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? isChecked;
  final Function? checkboxCallback;
  TaskCheckbox({this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        onChanged: (v) {
          checkboxCallback!();
        });
  }
}
