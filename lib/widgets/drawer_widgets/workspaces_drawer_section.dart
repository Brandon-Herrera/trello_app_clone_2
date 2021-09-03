import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'drawer_buttons.dart';

class WorkspacesDrawerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 45,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                  Text(
                    'Workspaces',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (ctx, i) => Container(
            height: 45,
            child: Row(
              children: [
                DrawerButtons(
                  'placeholder',
                  false,
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(
                      Icons.supervisor_account_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
