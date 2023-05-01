import 'package:flutter/material.dart';
import 'package:capston_project/component/main_calendar.dart';
import 'package:capston_project/component/schedule_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate,

              onDaySelected: onDaySelected,
            ),
            ScheduleCard(
                startTime: 12,
                endTime: 14,
                content: '일정 내용',
            )
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate){

    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}