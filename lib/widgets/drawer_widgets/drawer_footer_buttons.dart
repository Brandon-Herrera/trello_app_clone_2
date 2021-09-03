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
          Icon(Icons.credit_card),
          true,
          180,
        ),
        DrawerButtons(
          'Settings',
          Icon(Icons.settings),
          false,
          0,
        ),
        DrawerButtons(
          'Help!',
          Icon(Icons.report_gmailerrorred),
          false,
          190,
        )
      ],
    );
  }
}
