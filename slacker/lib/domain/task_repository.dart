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
    return _tasks[index];
  }
  @override
  int get length {return _tasks.length;}

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
  void removeAt(int index) {
    // TODO: implement removeAt
    _tasks.removeAt(index);
  }

  @override
  void removeAll() {
   _tasks.clear();
  }

}