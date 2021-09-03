import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'drawer_buttons.dart';

class DrawerFooterButtons extends StatelessWidget {
  const DrawerFooterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerButtons(
          'My cards',
          true,
          Transform.rotate(
            angle: 180 * math.pi / 180,
            alignment: Alignment.center,
            child: Icon(Icons.credit_card),
          ),
        ),
        DrawerButtons(
          'Settings',
          false,
          Transform.rotate(
            angle: 180 * math.pi / 180,
            alignment: Alignment.center,
            child: Icon(Icons.settings),
          ),
        ),
        DrawerButtons(
          'Help!',
          false,
          Transform.rotate(
            angle: 192 * math.pi / 180,
            alignment: Alignment.center,
            child: Icon(Icons.report_gmailerrorred),
          ),
        )
      ],
    );
  }
}
