import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

   AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;
    return Container(
      padding: EdgeInsets.all(50),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Text("ADD TASK" ,
           textAlign: TextAlign.center,

           style: TextStyle(
           fontSize: 40,
           color: Colors.indigo ,
             fontWeight: FontWeight.bold,
         ),),
         TextField(
           autofocus: true,
         textAlign: TextAlign.center,
           onChanged: (newText){
             newTextTitle= newText;
           },
         ),
         SizedBox(height: 25,),
         TextButton(onPressed: (){
           addTaskCallback(newTextTitle);
         },
             child: Text("ADD"),
             style:TextButton.styleFrom(
               backgroundColor: Colors.teal,
               primary: Colors.white
             )
         )
       ],
     ),


    );
  }

}
