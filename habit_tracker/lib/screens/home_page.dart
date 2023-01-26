import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/habit_selector.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/profile_pic_name.dart';
import 'package:habit_tracker/widgets/calendar.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: profilePicandName(),
          ),
          Calender(),
        ]),
      ),
    );
  }

  HorizontalCalendar Calender() {
    return HorizontalCalendar(
      date: DateTime.now(),
      textColor: Colors.black45,
      backgroundColor: Colors.white,
      selectedColor: Colors.blue,
      showMonth: true,
      onDateSelected: (date) => print(
        date.toString(),
      ),
    );
  }
}
