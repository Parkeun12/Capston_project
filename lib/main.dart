import 'package:flutter/material.dart';
import 'package:capston_project/screen/home_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:capston_project/navigation_screen.dart';

void main() async{

    WidgetsFlutterBinding.ensureInitialized();

    await initializeDateFormatting();

    runApp(
    MaterialApp(
      home: RootScreen(),
    )
  );
}