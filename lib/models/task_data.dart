import 'package:flutter/cupertino.dart';
import 'package:to_do_list/models/task.dart';
import 'package:to_do_list/screens/tasks_screen.dart';

class TaskData extends ChangeNotifier{


  List<Task>tasks =[
    Task(name: 'going to work'),
    Task(name: 'search and read about Flutter and Dart'),
    Task(name: 'start the project'),

  ];
  void updateTask(Task task){
    //tasks.donChange();
    notifyListeners();
  }
  void deleteTask(Task task){
   tasks.remove(task);
    notifyListeners();
  }
}