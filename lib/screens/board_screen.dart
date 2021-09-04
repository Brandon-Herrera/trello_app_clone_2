import 'package:flutter/material.dart';

import '../widgets/board_screen_widgets/board_list_item.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: bodyHeight,
        color: Color(0xff008FE4),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            BoardListItem(55, 'Red'),
            BoardListItem(10, 'Yellow'),
            BoardListItem(200, 'Green'),
            BoardListItem(200, 'Menial'),
            BoardListItem(200, 'Red')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
    );
  }
}
