// it is constant of every todo list item

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'is_task_done.dart';

class ToDoElement extends StatelessWidget {
  final ToDo todo;

  const ToDoElement({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          tileColor: ListColor,

          //checkbox setting
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: CheckBoxColor,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              color: TextColor,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          )),
    );
  }
}
