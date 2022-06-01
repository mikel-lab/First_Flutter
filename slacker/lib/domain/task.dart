

import 'package:updatable/updatable.dart';

class Task with Updatable{

//Propiedades
late String _description;
late TaskState _state;

 set description(String newValue){
  changeState(() {
    _description = newValue;
  });
}

set state(TaskState newValue){
    changeState(() {
      _state = newValue;
    });
  }
// Constructores
// "designado"
Task({required String description, required TaskState state})
:_description=description, 
_state=state;

//de conveniencia o con nombre
Task.toDo({required String description})
:_description=description,
_state=TaskState.toDo;


//Métodos sobreescritos
//Los necesitamos para poder hacer las comparaciones necesarias en los teses
//Normalmente =, hashCode y toString
@override
  String toString() {
    
    return '<$runtimeType: $_state $_description>';
  }

  @override //cada vez que sobreescribimos el operador == debemos sobrescribir el hash
  bool operator == (Object other){

    if(identical(this, other)){
      return true;
    }else{
      return other is Task &&
      _state == other._state &&
      _description == other._description;
    }
  }

  @override
  int get hashCode => Object.hashAll([_description, _state]);

  String get description => _description;
  TaskState get state => _state;


}


// Estado de una tarea
enum TaskState{toDo, doing, done}