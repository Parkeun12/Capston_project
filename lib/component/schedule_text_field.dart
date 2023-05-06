import 'package:capston_project/const/colors.dart';
import 'package:flutter/material.dart';

class ScheduleTextField extends StatelessWidget{
  final String label;

  const ScheduleTextField({
    required this.label,
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: BLUE_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}