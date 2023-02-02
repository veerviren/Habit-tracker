import 'dart:math';

import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/empty_brick.dart';
import 'package:habit_tracker/widgets/content_brick.dart';

int _randomNumber = 1;

List<Widget> Row1 = [
  ContentBrick(
    habit_name: "Coding",
    habit_icon: "assets/images/coding.png",
  ),
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Yoga",
    habit_icon: "assets/images/yoga.png",
  ),
  ContentBrick(
    habit_name: "Write",
    habit_icon: "assets/images/write.png",
  ),
  // EmptyBrick(),
];
List<Widget> Row2 = [
  ContentBrick(
    habit_name: "Running",
    habit_icon: "assets/images/running.png",
  ),
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Flossing",
    habit_icon: "assets/images/floss_teeth.png",
  ),
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Guitar",
    habit_icon: "assets/images/guitar.png",
  ),
];
List<Widget> Row3 = [
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Garden",
    habit_icon: "assets/images/gardening.png",
  ),
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Drawing",
    habit_icon: "assets/images/drawing.png",
  ),
  ContentBrick(
    habit_name: "Garden",
    habit_icon: "assets/images/gardening.png",
  ),
  // EmptyBrick(),
];
List<Widget> Row4 = [
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Journal",
    habit_icon: "assets/images/journal.png",
  ),
  ContentBrick(
    habit_name: "Bed",
    habit_icon: "assets/images/bed.png",
  ),
  // EmptyBrick(),
  ContentBrick(
    habit_name: "Cooking",
    habit_icon: "assets/images/cooking.png",
  ),
];

class Habit {
  final String name;
  final String icon;

  Habit({required this.name, required this.icon});
}

void _showAddHabitBottomSheet(BuildContext context) {
  final _habitList = [
    Habit(name: 'Meditation', icon: 'assets/images/coding.png'),
    Habit(name: 'Reading', icon: 'assets/images/coding.png'),
    Habit(name: 'Exercise', icon: 'assets/images/coding.png'),
  ];
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        color: Color(0xFF757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _habitList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        '${_habitList[index].icon}',
                        width: 50,
                        height: 50,
                      ),
                      title: Text(_habitList[index].name),
                      onTap: () {
                        if (_randomNumber % 5 == 0) {
                          _randomNumber = 1;
                        }
                        print(_randomNumber);
                        if (_randomNumber % 5 == 1) {
                          Row1.add(
                            ContentBrick(
                              habit_name: _habitList[index].name,
                              habit_icon: _habitList[index].icon,
                            ),
                          );
                        } else if (_randomNumber % 5 == 2) {
                          Row2.add(
                            ContentBrick(
                              habit_name: _habitList[index].name,
                              habit_icon: _habitList[index].icon,
                            ),
                          );
                        } else if (_randomNumber % 5 == 3) {
                          Row3.add(
                            ContentBrick(
                              habit_name: _habitList[index].name,
                              habit_icon: _habitList[index].icon,
                            ),
                          );
                        } else if (_randomNumber % 5 == 4) {
                          Row4.add(
                            ContentBrick(
                              habit_name: _habitList[index].name,
                              habit_icon: _habitList[index].icon,
                            ),
                          );
                        }
                        Navigator.pop(context);
                        _randomNumber++;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class HabitSelectorPage extends StatefulWidget {
  const HabitSelectorPage({super.key});

  @override
  State<HabitSelectorPage> createState() => _HabitSelectorPageState();
}

class _HabitSelectorPageState extends State<HabitSelectorPage> {
  late String _habitName;
  late String _habitIcon;

  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text('What are your habits?',
                  style: KonboardingText, textAlign: TextAlign.start),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                'Select your daily, weekly or monthly habits.',
                style: TextStyle(fontSize: 15),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: Row1,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: Row2,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: Row3,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: Row4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _showAddHabitBottomSheet(context);
                      },
                      child: Text(
                        'Add Habit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    child: const Icon(Icons.forward),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
