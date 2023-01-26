import 'package:flutter/material.dart';

class EmptyBrick extends StatefulWidget {
  const EmptyBrick({super.key});

  @override
  State<EmptyBrick> createState() => _EmptyBrickState();
}

class _EmptyBrickState extends State<EmptyBrick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
