import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/empty_brick.dart';
import 'package:habit_tracker/widgets/content_brick.dart';

class HabitSelectorPage extends StatefulWidget {
  const HabitSelectorPage({super.key});

  @override
  State<HabitSelectorPage> createState() => _HabitSelectorPageState();
}

class _HabitSelectorPageState extends State<HabitSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        ContentBrick(
                          habit_name: "Coding",
                          habit_icon: "assets/images/coding.png",
                        ),
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Yoga",
                          habit_icon: "assets/images/yoga.png",
                        ),
                        ContentBrick(
                          habit_name: "Write",
                          habit_icon: "assets/images/write.png",
                        ),
                        EmptyBrick(),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        ContentBrick(
                          habit_name: "Running",
                          habit_icon: "assets/images/running.png",
                        ),
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Flossing",
                          habit_icon: "assets/images/floss_teeth.png",
                        ),
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Guitar",
                          habit_icon: "assets/images/guitar.png",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Gardening",
                          habit_icon: "assets/images/gardening.png",
                        ),
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Drawing",
                          habit_icon: "assets/images/drawing.png",
                        ),
                        EmptyBrick(),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Journal",
                          habit_icon: "assets/images/journal.png",
                        ),
                        ContentBrick(
                          habit_name: "Bed",
                          habit_icon: "assets/images/bed.png",
                        ),
                        EmptyBrick(),
                        ContentBrick(
                          habit_name: "Cooking",
                          habit_icon: "assets/images/cooking.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: const Icon(Icons.forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
