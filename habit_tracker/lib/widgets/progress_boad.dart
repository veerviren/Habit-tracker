import 'package:flutter/material.dart';
import 'package:habit_tracker/contants.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// var totalSelectedHabit = SelectedHabit.length;
var totalCompletedHabit = 0;

class ProgressBoad extends StatefulWidget {
  const ProgressBoad({super.key});

  @override
  State<ProgressBoad> createState() => _ProgressBoadState();
}

class _ProgressBoadState extends State<ProgressBoad> {
  updateWidget() {
    setState(() {
      totalCompletedHabit++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 30,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 150,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 140,
              height: 140,
              child: Image.asset(
                "assets/images/boy_meditation.png",
              ),
            ),
          ),
          Positioned(
            top: 15,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/images/sound.png",
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 140,
            child: Text(
              "Your Daily GoalAlmost Done",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 110,
            left: 140,
            child: Text(
              "${totalCompletedHabit} out of ${SelectedHabit.length} is completed",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 150,
            left: 50,
            child: Container(
              width: 300,
              child: StepProgressIndicator(
                totalSteps: SelectedHabit.length,
                currentStep: SelectedHabit.length - 1,
                size: 8,
                padding: 0,
                selectedColor: Colors.white,
                unselectedColor: Colors.white54,
                roundedEdges: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
