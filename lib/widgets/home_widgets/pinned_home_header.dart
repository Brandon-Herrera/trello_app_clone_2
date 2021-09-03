import 'package:flutter/material.dart';

class PinnedHomeHeader extends StatefulWidget {
  @override
  _PinnedHomeHeaderState createState() => _PinnedHomeHeaderState();
}

class _PinnedHomeHeaderState extends State<PinnedHomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: Colors.grey.shade300,
          ),
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Text(
              'Starred Boards',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
