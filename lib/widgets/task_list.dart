import 'package:flutter/material.dart';


class TaskTite extends StatelessWidget {

  //@override
  //State<TaskTite> createState() => _TaskTiteState();
//}

//class _TaskTiteState extends State<TaskTite> {
  final bool isChecked  ;
  final String taskTitle;
  final void Function(bool?) checkboxChange;

  final void Function() listTileDelete; //ddd

  TaskTite({required this.isChecked ,
    required this.taskTitle ,
    required this.checkboxChange ,
   required this.listTileDelete //ddd
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle ,
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough :null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal,
        value: isChecked,
        onChanged: checkboxChange,

      ),

      //
      onLongPress:listTileDelete ,
      //
    );
  }
}

/*class TaskChackbox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool?) checboxChange;
  TaskChackbox(this.checkboxState , this.checboxChange);

  /*@override
  State<TaskChackbox> createState() => _TaskChackboxState();
}

class _TaskChackboxState extends State<TaskChackbox> {*/
  //bool? isChecked = false ;
  @override
  Widget build(BuildContext context) {
    return
      //Checkbox(
      //activeColor: Colors.teal,
      //value: checkboxState,
      //onChanged: checboxChange,
          //(newValue){
        //setState(() {
          //isChecked =newValue;
       // });
      //}
    //);
  }*/
