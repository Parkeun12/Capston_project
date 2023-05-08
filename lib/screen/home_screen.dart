import 'package:capston_project/const/colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final int number;

  const MainScreen({
    required this.number,
    Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: BLUE_COLOR,

        title: Text('C언어 스터디'),

        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: null),
        ],
      ),
      body: Text('Home Screen'),
    );
  }
}