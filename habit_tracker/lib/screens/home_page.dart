import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/profile_pic_name.dart';
import 'package:habit_tracker/widgets/calendar.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:date_only/date_only.dart';
import 'package:habit_tracker/widgets/selected_habit.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:habit_tracker/screens/habit_selector.dart';
import '../widgets/progress_boad.dart';

late DateOnly dateOnly = DateOnly.now();
late String todayDate = dateOnly.toString();
late String selectedDate = todayDate;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String progress = "Not Done";
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
          Text(SelectedHabit.length.toString()),
          Container(
            height: 280,
            width: double.infinity,
            // color: Colors.red,
            child: ListView(
              children: [
                ...SelectedHabit.map(
                  (e) => SelectedHabitList(
                    text: e["text"]!,
                    icon: e["icon"]!,
                  ),
                ).toList(),
              ],
            ),
          )
        ]),
      ),
    );
  }

  HorizontalCalendar Calender() {
    return HorizontalCalendar(
      date: DateTime.now(),
      textColor: Colors.black45,
      showMonth: true,
      lastDate: DateTime.now().add(Duration(days: 100)),
      backgroundColor: Colors.white,
      selectedColor: Colors.blue,
      onDateSelected: (date) => setState(() {
        selectedDate = date.toString();
        print(selectedDate);
        print(todayDate);
      }),
    );
  }
}
