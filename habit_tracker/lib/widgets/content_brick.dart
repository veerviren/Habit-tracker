import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/habit_selector.dart';
import 'package:habit_tracker/contants.dart';

class ContentBrick extends StatefulWidget {
  final String habit_name;
  final String habit_icon;
  const ContentBrick({required this.habit_name, required this.habit_icon});

  @override
  State<ContentBrick> createState() => _ContentBrickState();
}

class _ContentBrickState extends State<ContentBrick> {
  bool ok = true;
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    Map<String, String> habit = {
      "icon": widget.habit_icon,
      "text": widget.habit_name,
    };
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            print(ok);
            if (ok) {
              value = 10;
              SelectedHabit.add(habit);
              ok = false;
            } else {
              ok = true;
              SelectedHabit.removeWhere(
                  (item) => item.toString() == habit.toString());
              value = 0.0;
            }
            print(SelectedHabit.length.toInt());
            print(SelectedHabit);
          });
        },
        child: Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: value),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(widget.habit_icon, width: 50, height: 50),
                  Text(
                    widget.habit_name,
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
