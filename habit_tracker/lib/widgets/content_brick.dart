import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/habit_selector.dart';

class ContentBrick extends StatefulWidget {
  final String habit_name;
  const ContentBrick({required this.habit_name});

  @override
  State<ContentBrick> createState() => _ContentBrickState();
}

class _ContentBrickState extends State<ContentBrick> {
  bool ok = true;
  double value = 0.0;
  Container data = Container(
    width: 100,
    height: 100,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            if (ok) {
              value = 10;
              HabitList.add(data);
              ok = false;
            } else {
              ok = true;
              HabitList.remove(data);
              value = 0.0;
            }
          });
        },
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: value),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.sports_gymnastics,
              size: 50,
            ),
            Text(
              widget.habit_name,
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
      ),
    );
  }
}
