import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../widgets/home_widgets/home_board_section.dart';
import '../widgets/drawer_widgets/app_drawer.dart';
import '../widgets/home_widgets/pinned_home_header.dart';
import '../widgets/home_widgets/home_board_grid_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boards'),
        backgroundColor: Colors.blue[700],
        actions: [
          Row(
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  padding: EdgeInsets.only(left: 20.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Colors.deepOrange[500],
                ),
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: Icon(Icons.notifications_none_sharp),
                ),
              ),
              Container(
                width: 10,
              )
            ],
          )
        ],
      ),
      drawer: AppDrawer(),
      body: HomeBoardSection(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
    );
  }
}
