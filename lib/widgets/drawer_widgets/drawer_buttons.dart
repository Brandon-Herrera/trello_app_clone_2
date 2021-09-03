import 'dart:math' as math;

import 'package:flutter/material.dart';

class DrawerButtons extends StatelessWidget {
  final String drawerButtonTitle;
  final bool borderOption;
  final Transform uniqueTransformForWorkspacesSection;

  DrawerButtons(
    this.drawerButtonTitle,
    this.borderOption,
    this.uniqueTransformForWorkspacesSection,
  );

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
          uniqueTransformForWorkspacesSection,
          SizedBox(width: 30),
          Text(drawerButtonTitle),
        ],
      ),
    );
  }
}
