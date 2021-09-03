import 'package:flutter/material.dart';

class DrawerHeaderButtons extends StatelessWidget {
  const DrawerHeaderButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
              // color: Colors.white,
              ),
          child: Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.square_foot),
              SizedBox(width: 30),
              Text('Boards'),
            ],
          ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            // color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: Colors.grey.shade400,
              ),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.access_alarms),
              SizedBox(width: 30),
              Text('Home'),
            ],
          ),
        ),
      ],
    );
  }
}
