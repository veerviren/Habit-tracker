import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/habit_selector.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/profile_pic_name.dart';
import 'package:habit_tracker/widgets/calendar.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/progress_boad.dart';

late String todayDate = DateTime.now().toString();
late String selectedDate = todayDate;

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Calender(),
          ),
          SizedBox(
            height: 20,
          ),
          ProgressBoad(),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(right: 150),
            child: Text(
              "Todays Habits",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Visibility(
            visible: (selectedDate == todayDate ? true : false),
            child: Container(
              child: Text(HabitList.length.toString()),
            ),
          ),
        ]),
      ),
    );
  }

  HorizontalCalendar Calender() {
    return HorizontalCalendar(
      date: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 100)),
      textColor: Colors.black45,
      backgroundColor: Colors.white,
      selectedColor: Colors.blue,
      showMonth: true,
      onDateSelected: (date) => setState(() {
        selectedDate = date.toString();
        print(selectedDate);
        print(todayDate);
      }),
    );
  }
}
