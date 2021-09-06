import 'package:flutter/material.dart';

class BoardDrawer extends StatefulWidget {
  const BoardDrawer({Key? key}) : super(key: key);

  @override
  _BoardDrawerState createState() => _BoardDrawerState();
}

class _BoardDrawerState extends State<BoardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: Container(),
        ));
  }
}
