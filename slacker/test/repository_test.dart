import 'package:flutter_test/flutter_test.dart';
import 'package:slacker/domain/task.dart';
import 'package:slacker/domain/task_repository.dart';

void main() {
  
  group('Creation & accessors', (){
    test('Repo vacio tiene length cero', (){
      expect(TaskRepository.shared.length, 0);
    });
  });

  group('Mutators', (){
    test('Al añadir una tarea la length se incrementa en 1', (){
      final t1 = Task(description: 'description', state: TaskState.toDo);
      TaskRepository.shared.add(t1);
      expect(TaskRepository.shared.length, 1);
    });

    test('Al insertar en posición N la tarea pasa a estar en posición n', (){
      final repositorio = TaskRepository.shared;
      final t1 = Task(description: 'description', state: TaskState.toDo);
      repositorio.insert(5, t1);
      expect(repositorio[5], t1);
    });

    test('removeAt: elimina un elemento de una posición', (){

      final repo = TaskRepository.shared;
      //cuando el índice no existe
      expect((){repo.removeAt(44556);}, throwsRangeError);

      //cuando el índice existe
      final repositorio = TaskRepository.shared;
      final t1 = Task(description: 'description', state: TaskState.toDo);
      repositorio.insert(5, t1);
      repositorio.removeAt(5);
      expect(repositorio[5], null);

    });

    test('remove: elimina el objeto recibido como parámetro si existe', (){
      final repositorio = TaskRepository.shared;
      final t1 = Task(description: 'description', state: TaskState.toDo);
      
    });
  });
}