import 'package:flutter/material.dart';

class profilePicandName extends StatelessWidget {
  const profilePicandName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
                radius: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Viren Variya",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
        Icon(Icons.notifications),
      ],
    );
  }
}
