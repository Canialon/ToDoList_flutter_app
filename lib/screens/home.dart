import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/todo_element.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      appBar: AppBar(
        backgroundColor: BgColor,
        title: Text('To Do App'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [ToDoElement()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
