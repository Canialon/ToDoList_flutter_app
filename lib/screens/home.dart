import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../constants/colors.dart';
import '../widgets/todo_element.dart';
import '../widgets/is_task_done.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDoTasksList.todoList();
  final _todoController = TextEditingController();
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

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

      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 35), //paddings of all page
              child: ListView(
                children: [
                  for (ToDoTasksList todoo in todoList) // our list
                    ToDoElement(
                      todo: todoo,
                      onToDoChanged: _handleToDoChange,
                    ),
                ],
              )),

          //imput field
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 10,
                        left: 20,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: ListColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                          hintText: 'Add new task',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  //plus button
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 10,
                    ),
                    child: ElevatedButton(
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 40),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(35),
                          ),
                          primary: CheckBoxColor,
                          minimumSize: Size(50, 50),
                          elevation: 0),
                      onPressed: () {
                        _addToDoElement(_todoController.text);
                      },
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

// function to change te state of chackbox
  void _handleToDoChange(ToDoTasksList todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

// function to make imput field work
  void _addToDoElement(String toDo) {
    setState(() {
      todoList.add(ToDoTasksList(id: Uuid().toString(), todoText: toDo));
    });
    _todoController.clear();
  }
}
