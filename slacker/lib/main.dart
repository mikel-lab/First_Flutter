import 'package:flutter/material.dart';
import 'package:slacker/domain/task.dart';
import 'package:slacker/widgets/task_widget.dart';

void main() {
  runApp(const SlackerApp());
}

class SlackerApp extends StatelessWidget {
  const SlackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TaskWidget(model: Task.toDo(description: 'Aprender Flutter'),),
        ),
      ),
    );
  }
}
