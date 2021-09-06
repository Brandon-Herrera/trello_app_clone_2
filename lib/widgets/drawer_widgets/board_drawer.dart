import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'drawer_buttons.dart';

class BoardDrawer extends StatefulWidget {
  const BoardDrawer({Key? key}) : super(key: key);

  @override
  _BoardDrawerState createState() => _BoardDrawerState();
}

class _BoardDrawerState extends State<BoardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          child: Column(
            children: [
              SizedBox(height: 40),
              DrawerButtons(
                'About this board',
                false,
                Transform.rotate(
                  angle: 192 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.report_gmailerrorred),
                ),
              ),
              DrawerButtons(
                'Members',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.person_outline_rounded),
                ),
              ),
              DrawerButtons(
                'Activity',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.list),
                ),
              ),
              DrawerButtons(
                'Power-Ups',
                true,
                Transform.rotate(
                  angle: 35 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.fire_extinguisher),
                ),
              ),
              DrawerButtons(
                'Archived cards',
                true,
                Transform.rotate(
                  angle: 180 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.credit_card),
                ),
              ),
              DrawerButtons(
                'Archived lists',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.bar_chart),
                ),
              ),
              DrawerButtons(
                'Board settings',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.settings),
                ),
              ),
              DrawerButtons(
                'Email-to-board settings',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.email_outlined),
                ),
              ),
              DrawerButtons(
                'Unstar board',
                true,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.star_border_outlined,
                    color: Colors.amber,
                  ),
                ),
              ),
              DrawerButtons(
                'Pin to home screen',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.push_pin),
                ),
              ),
              DrawerButtons(
                'Stop watching',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              DrawerButtons(
                'Copy board',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.copy),
                ),
              ),
              DrawerButtons(
                'Share board link',
                false,
                Transform.rotate(
                  angle: 0 * math.pi / 180,
                  alignment: Alignment.center,
                  child: Icon(Icons.share),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              DrawerButtons(
                'Synced',
                false,
                Transform.rotate(
                  angle: 50 * math.pi / 180,
                  child: Transform(
                    transform: Matrix4.rotationY(math.pi),
                    alignment: Alignment.center,
                    child: Icon(Icons.sync),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom - 20)
            ],
          ),
        ));
  }
}
