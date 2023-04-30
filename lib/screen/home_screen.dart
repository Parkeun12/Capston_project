import 'package:flutter/material.dart';
import 'package:capston_project/component/main_calendar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            MainCalendar(),
          ],
        ),
      ),
    );
  }
}