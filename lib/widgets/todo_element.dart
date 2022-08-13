import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoElement extends StatelessWidget {
  const ToDoElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: ListColor,
      ),
    );
  }
}
