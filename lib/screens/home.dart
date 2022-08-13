import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/todo_element.dart';
import '../widgets/is_task_done.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,

      //it is header
      appBar: AppBar(
        backgroundColor: BgColor,
        title: Text(
          'To Do App',
          style: TextStyle(color: TextColor),
        ),
        elevation: 0,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: 35), //paddings of all page
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (ToDo todoo in todoList) ToDoElement(todo: todoo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
