import 'package:flutter/material.dart';

import './home_board_list_item.dart';

class HomeBoardListSection extends StatelessWidget {
  final int listAmount;

  HomeBoardListSection(this.listAmount);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Colors.grey.shade400,
              ),
              bottom: BorderSide(
                width: 1.0,
                color: Colors.grey.shade400,
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
        ),
        HomeBoardListItem(listAmount),
      ],
    );
  }
}
