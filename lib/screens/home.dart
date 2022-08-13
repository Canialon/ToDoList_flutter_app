import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: BgColor, title: Text('To Do App')),
      body: Container(
        child: Text('hi there!'),
      ),
    );
  }
}
