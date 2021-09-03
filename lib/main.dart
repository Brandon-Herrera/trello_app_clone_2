import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'widgets/drawer_widgets/app_drawer.dart';
import 'widgets/home_widgets/home_board_section.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
