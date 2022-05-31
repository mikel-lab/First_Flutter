import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:slacker/domain/task.dart';

void main(){

  group('Task', () {

    test('Creation', (){
      expect(Task(description: 'Compilar', state: TaskState.toDo),isNotNull);
      expect(Task.toDo(description: 'Comprar el libro de Kent'), isNotNull);
    });


    test('Fields', (){
      //comprobar que task tiene getter para los 
      //campos state y description y que funcionan como es de esperar
    });


    test('Objetos equivalentes deben ser iguales', (){

      expect(Task(description: 'description', state: TaskState.doing), Task(description: 'description', state: TaskState.doing));
    });

    test('Objetos no equivalentes no pueden ser iguales', (){
      final t1 = Task(description: 'description', state: TaskState.doing);
      final t2 = Task(description: 'description', state: TaskState.toDo);

      expect(t1 != t2, isTrue);
    });

    test('Objetos equivalentes deben tener el mismo hash', (){
      final t1 = Task(description: 'description', state: TaskState.doing);
      final t2 = Task(description: 'description', state: TaskState.doing);

      expect(t1.hashCode, t1.hashCode);
      expect(t2.hashCode, t1.hashCode);

    });
  });


}