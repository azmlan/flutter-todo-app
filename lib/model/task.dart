import 'package:todo_flutter/widgets/task_tile.dart';

class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    // make this.isDone equal the opposite value
    // isDone == false ? isDone = true : isDone = false;
    // OR
    isDone = !isDone;
  }

  void addTask(name) {
    // return TaskTile(taskTile: name, isChecked: isChecked=false,)
    name = this.name;
    print(name);
  }
}
