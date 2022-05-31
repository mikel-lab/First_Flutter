import 'package:slacker/domain/repository.dart';
import 'package:slacker/domain/task.dart';

class TaskRepository implements Repository<Task>{
  
  List<Task> _tasks = [];
  //SINGLETON
  //Al haber solo 1 repositorio lo más logico es que se acceda a él desde un Singleton
  TaskRepository._hidden();
  static final shared = TaskRepository._hidden();

  @override
  Task operator [](int index) {
    // TODO: implement []
    throw UnimplementedError();
  }

  @override
  void add(Task element) {
    // TODO: implement add
    _tasks.add(element);
  }

  @override
  void insert(int index, Task element) {
    // TODO: implement inert
    _tasks.insert(index, element);
  }

  @override
  // TODO: implement length
  int get length => throw UnimplementedError();

  @override
  void move(int from, int to) {
    // TODO: implement move
  }

  @override
  void remove(Task element) {
    // TODO: implement remove
  }

  @override
  void removeAt(int index) {
    // TODO: implement removeAt
    _tasks.removeAt(index);
  }

}