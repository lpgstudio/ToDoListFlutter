import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

// run this method if this is the first time ever opening this app
  void createInicialData() {
    toDoList = [
      ['Beber água', false],
      ['Correr 5km', false]
    ];
  }

  // load data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // Update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
