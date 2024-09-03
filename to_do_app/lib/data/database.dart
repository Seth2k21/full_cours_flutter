import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];
  // reference our box

  final _myBox = Hive.box("mybox");

  //run this methode if the 1st time over opening this app
  void createInitialData(){
       toDoList = [
           [ "Make tutorial", false],
           [ "Do Exercice", false],
       ];
  }
  //load the data from datatbase
   void loadData() {
       toDoList = _myBox.get("TODOLIST");
   }

   //update the database
   void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
   }
}