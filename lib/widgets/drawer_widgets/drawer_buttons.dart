import 'dart:math' as math;

import 'package:flutter/material.dart';

class DrawerButtons extends StatelessWidget {
  final String drawerButtonTitle;
  final Icon uniqueIcon;
  final bool borderOption;
  final int rotation;

  DrawerButtons(
    this.drawerButtonTitle,
    this.uniqueIcon,
    this.borderOption,
    this.rotation,
  );

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
      decoration: BoxDecoration(
        border: borderOption
            ? Border(
                top: BorderSide(
                  width: 1.0,
                  color: Colors.grey.shade400,
                ),
              )
            : null,
      ),
      child: Row(
        children: [
          SizedBox(width: 15),
          rotation == 0
              ? uniqueIcon
              : Transform.rotate(
                  angle: rotation * math.pi / 180,
                  alignment: Alignment.center,
                  child: uniqueIcon),
          SizedBox(width: 30),
          Text(drawerButtonTitle),
        ],
      ),
    );
  }
}
