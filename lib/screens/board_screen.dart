import 'package:flutter/material.dart';

import '../widgets/board_screen_widgets/board_list_item.dart';
import '../widgets/board_screen_widgets/board_drawer.dart';
import 'home_screen.dart';

class BoardScreen extends StatefulWidget {
  // const BoardScreen({Key? key}) : super(key: key);

  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var _scrollController = PageController(viewportFraction: 0.75);

  @override
  void initState() {
    _scrollController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double bodyHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top);
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('Daily Hub'),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.align_horizontal_center),
              SizedBox(width: 20),
              Container(
                height: 32,
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
              SizedBox(width: 5),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
      endDrawer: BoardDrawer(),
      body: Container(
        height: bodyHeight,
        color: Color(0xff008FE4),
        child: PageView(
          scrollDirection: Axis.horizontal,
          physics: PageScrollPhysics(),
          controller: _scrollController,
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
