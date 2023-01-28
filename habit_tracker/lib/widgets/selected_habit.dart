import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/progress_boad.dart';

String progress = "Not Done";

class SelectedHabitList extends StatefulWidget {
  const SelectedHabitList({required this.text, required this.icon});

  final String text;
  final String icon;

  @override
  State<SelectedHabitList> createState() => _SelectedHabitListState();
}

class _SelectedHabitListState extends State<SelectedHabitList> {
  Color notCompleted = Colors.blue[300]!;
  bool buttonenabled = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Image.asset(widget.icon, width: 50, height: 50),
        Text(widget.text),
        ElevatedButton(
          onPressed: buttonenabled
              ? () {
                  setState(() {
                    progress = "Done";
                    buttonenabled = false;
                    totalCompletedHabit++;
                  });
                }
              : null,
          style: ElevatedButton.styleFrom(
            primary: notCompleted,
            onSurface: Colors.blue[900]!,
          ),
          child: Text(progress),
        ),
      ]),
    );
  }
}
