import 'package:flutter/material.dart';

import '../../models/board.dart';
import '../../screens/board_screen.dart';

class HomeBoardGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BoardScreen(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: GridTile(
          child: Image.network(
              'https://s9.limitedrun.com/images/1378714/Turnover_Promo_-51.jpg'),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text('Board Title'),
          ),
        ),
      ),
    );
  }
}
