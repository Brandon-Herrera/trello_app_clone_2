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
          WorkspacesDrawerSection(),
          DrawerFooterButtons(),
        ],
      ),
    );
  }
}
