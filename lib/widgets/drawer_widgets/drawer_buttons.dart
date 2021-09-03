import 'package:flutter/material.dart';

class DrawerButtons extends StatelessWidget {
  // final String drawerButtonTitle;
  // final Map<String, Icon> iconNames = {
  //   'Boards': Icon(Icons.square_foot),
  //   'Home': Icon(Icons.hearing_outlined),
  // };

  // DrawerButtons(this.drawerButtonTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(Icons.square_foot),
          SizedBox(width: 30),
          Text('Hello'),
        ],
      ),
    );
  }
}
