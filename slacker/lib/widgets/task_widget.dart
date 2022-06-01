import 'package:flutter/material.dart';
import 'package:mow/mow.dart';

import '../domain/task.dart';

class TaskWidget extends MOWWidget<Task>{

  

  TaskWidget({required Task model, Key? key}) :super(model: model);

  @override
  MOWState<Task, TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends MOWState<Task, TaskWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: ListTile(
        leading: _checkbox(),
        title: Text(model.description),
      ),
    );
  }

    Widget _checkbox(){
      bool? value;

      if (model.state == TaskState.done) {
        value = true;
      }else if(model.state == TaskState. toDo){
        value = false;
      }
      return Checkbox(value: value, onChanged: (bool? newValue){
        final bool value = newValue ?? false;
        if(value == true){
          model.state == TaskState.done;
        }else{
          model.state == TaskState.toDo;
        }
      });
    }
}