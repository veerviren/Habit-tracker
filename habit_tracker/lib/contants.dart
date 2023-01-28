import 'package:flutter/material.dart';

final KonboardingText = TextStyle(
  fontSize: 30,
);

List<Map<String, String>> SelectedHabit = [];

enum HabitText {
  Journal,
  Read,
  MakeBed,
  Meditation,
  PushUp,
  Cooking,
  Guitar,
  Stretch,
  Drawing,
  Yoga,
  Exercise,
  Walk,
  Run,
  Bike,
  Swim,
  Dance,
  Sing,
  Piano,
  Sketch,
  Paint,
  Write,
  Code,
  Study,
}

Map<String, Map<String, String>> HabitList = {
  "journal": {
    "icon": "assets/icons/journal.png",
    "text": "Journal",
  },
  "read": {
    "icon": "assets/icons/read.png",
    "text": "Read",
  },
  "MakeBed": {
    "icon": "assets/icons/bed.png",
    "text": "Make Bed",
  },
  "meditation": {
    "icon": "assets/icons/meditation.png",
    "text": "Meditation",
  },
  "push_up": {
    "icon": "assets/icons/push_up.png",
    "text": "Push Up",
  },
  "cooking": {
    "icon": "assets/icons/cooking.png",
    "text": "Cooking",
  },
  "guitar": {
    "icon": "assets/icons/guitar.png",
    "text": "Guitar",
  },
  "stretch": {
    "icon": "assets/icons/stretch.png",
    "text": "Stretch",
  },
  "drawing": {
    "icon": "assets/icons/drawing.png",
    "text": "Drawing",
  },
  "coding": {
    "icon": "assets/icons/coding.png",
    "text": "Coding",
  },
  "flossTeeth": {
    "icon": "assets/icons/floss_teeth.png",
    "text": "Floos Teeth",
  },
  "gardening": {
    "icon": "assets/icons/gardening.png",
    "text": "Gardening",
  },
  "yoga": {
    "icon": "assets/icons/yoga.png",
    "text": "Yoga",
  },
  "swimming": {
    "icon": "assets/icons/swimming.png",
    "text": "Swimming",
  },
  "running": {
    "icon": "assets/icons/running.png",
    "text": "Running",
  },
  "medications": {
    "icon": "assets/icons/medications.png",
    "text": "Medications",
  },
  "shower": {
    "icon": "assets/icons/shower.png",
    "text": "Shower",
  },
  "weigh": {
    "icon": "assets/icons/weigh.png",
    "text": "Weigh",
  },
  "write": {
    "icon": "assets/icons/write.png",
    "text": "Write",
  },
};
