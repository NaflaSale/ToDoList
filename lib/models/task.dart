class Task {
  final String name;
  bool isDone;
  Task({required this.name , this.isDone=false}
      );


  void doneChange(){
    isDone =!isDone;
  }
}

/*chlid:Row(
children: [
IconButton(onPressed:(){}, Icon(Icons.edit)
IconButton(onPressed:(){}, Icon(Icons.delete)
],
)*/