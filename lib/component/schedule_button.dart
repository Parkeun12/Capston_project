import 'package:capston_project/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:capston_project/component/schedule_text_field.dart';

class ScheduleButtonSheet extends StatefulWidget{
  const ScheduleButtonSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleButtonSheet> createState() => ScheduleButtonSheetState();
}

class ScheduleButtonSheetState extends State<ScheduleButtonSheet> {
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height/2,
          color: WHITE_COLOR,
          child: ScheduleTextField(
            label: '시작 시간',
          ),
        ),
    );
  }
}

