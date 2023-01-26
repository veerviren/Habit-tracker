import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';
import 'package:habit_tracker/widgets/empty_brick.dart';
import 'package:habit_tracker/widgets/content_brick.dart';

List<String> HabitList = [];

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
                        ContentBrick(),
                        EmptyBrick(),
                        ContentBrick(),
                        ContentBrick(),
                        EmptyBrick(),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        ContentBrick(),
                        EmptyBrick(),
                        ContentBrick(),
                        EmptyBrick(),
                        ContentBrick(),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        EmptyBrick(),
                        ContentBrick(),
                        EmptyBrick(),
                        ContentBrick(),
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
                        ContentBrick(),
                        ContentBrick(),
                        EmptyBrick(),
                        ContentBrick(),
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
