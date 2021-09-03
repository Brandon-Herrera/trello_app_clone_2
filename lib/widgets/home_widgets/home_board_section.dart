import 'package:flutter/material.dart';

import 'home_board_grid_item.dart';
import 'home_starred_boards_section.dart';
import 'home_board_list_section.dart';

class HomeBoardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeStarredBoardsSection(),
        HomeBoardListSection(2),
        HomeBoardListSection(10),
      ],
    );
  }
}
