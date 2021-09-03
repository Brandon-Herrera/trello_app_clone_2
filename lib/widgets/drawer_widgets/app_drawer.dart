import 'package:flutter/material.dart';

import 'drawer_buttons.dart';
import 'workspaces_drawer_section.dart';
import 'drawer_header_widget.dart';
import 'drawer_header_buttons.dart';
import 'drawer_footer_buttons.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeaderWidget(),
          DrawerHeaderButtons(),
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
          DrawerFooterButtons(),
        ],
      ),
    );
  }
}
