import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/progress_boad.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  String habitStatus = 'Not Done';

  @override
  void initState() {
    super.initState();
    _getButtonState();
  }

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
              ? () async {
                  setState(() {
                    habitStatus = 'Done';
                    buttonenabled = false;
                    totalCompletedHabit++;
                    print(totalCompletedHabit);
                  });

                  await _setButtonState();
                }
              : null,
          style: ElevatedButton.styleFrom(
            primary: notCompleted,
            onSurface: Colors.blue[900]!,
          ),
          child: Text(habitStatus),
        ),
      ]),
    );
  }

  Future<void> _setButtonState() async {
    final preferences = await SharedPreferences.getInstance();
    setState(() {
      habitStatus = 'Done';
      buttonenabled = false;
    });
    preferences.setString(widget.text, 'Done');
    Future.delayed(Duration(seconds: 10), () async {
      setState(() {
        habitStatus = 'Not Done';
        buttonenabled = true;
      });
      preferences.setString(widget.text, 'Not Done');
    });
  }

  Future<void> _getButtonState() async {
    final preferences = await SharedPreferences.getInstance();
    final habitStatus = preferences.getString(widget.text) ?? 'Not Done';
    setState(() {
      this.habitStatus = habitStatus;
      buttonenabled = habitStatus == 'Not Done';
    });
  }
}
