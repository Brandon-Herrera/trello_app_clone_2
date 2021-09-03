import 'package:flutter/material.dart';

import 'drawer_buttons.dart';
import 'workspaces_drawer_section.dart';
import 'drawer_header_widget.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeaderWidget(),
          // Column(
          // children: [
          Container(
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
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
              color: Colors.white,
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
          // Container(
          //   height: 45,
          //   width: double.infinity,
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(
          //         children: [
          //           SizedBox(width: 15),
          //           Text(
          //             'Workspaces',
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // WorkspacesDrawerSection(),
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
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (ctx, i) => Container(
              height: 45,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              // ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.access_alarms),
                  SizedBox(width: 30),
                  Text('Home'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
