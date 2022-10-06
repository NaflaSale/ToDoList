import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/task_list.dart';
import 'package:to_do_list/models/task_data.dart';
import '../models/task.dart';
import '../widgets/task_list.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  //List<Task> tasks= [
   // Task(name: 'go to home'),
    //Task(name: 'go to shopping'),
    //Task(name: 'buy a gift'),

  //];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTite(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChange: (newValue) {
              //widget.updateTask(widget.tasks[index]);
              setState(() {
                widget.tasks[index].doneChange();

              });



            },

          listTileDelete: () {
            //widget.deleteTask(widget.tasks[index]);
          },//ddd
        );

      },
    );
  }}