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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Todays Habits",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      primary: Colors.white,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      // showAddHabitBottomSheet(context, this as HabitSelectorPageState);
                    },
                    child: Text(
                      'Add Habit',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(SelectedHabit.length.toString()),
          Container(
            height: 280,
            width: double.infinity,
            // color: Colors.red,
            child: ListView(
              children: [
                if (todayDate.substring(9, 19) == selectedDate)
                  ...SelectedHabit.map(
                    (e) => SelectedHabitList(
                      text: e["text"]!,
                      icon: e["icon"]!,
                    ),
                  ).toList(),
                if (todayDate.substring(9, 19) != selectedDate)
                  Center(
                    child: Container(
                      child: Text(
                        "No habits for the selected date",
                        style: TextStyle(fontSize: 20, color: Colors.black45),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  HorizontalCalendar Calender() {
    return HorizontalCalendar(
      date: DateTime.now(),
      textColor: Colors.black45,
      showMonth: true,
      initialDate: DateTime.now().subtract(Duration(days: 10)),
      lastDate: DateTime.now().add(Duration(days: 100)),
      // lastDate: DateTime.now().subtract(Duration(days: 10)),
      backgroundColor: Colors.white,
      selectedColor: Colors.blue,
      onDateSelected: (date) => setState(() {
        selectedDate = date;
        print(selectedDate);
        print(todayDate.substring(9, 19));
      }),
    );
  }
}
