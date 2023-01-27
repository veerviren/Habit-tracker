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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Calender(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.red,
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      "assets/images/high_score.png",
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
      lastDate: DateTime.now().add(const Duration(days: 100)),
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
