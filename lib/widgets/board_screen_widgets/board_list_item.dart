import 'package:flutter/material.dart';

import 'board_list_task_item.dart';

class BoardListItem extends StatefulWidget {
  double bottomMargin;
  String listTitle;

  BoardListItem(
    this.bottomMargin,
    this.listTitle,
  );

  @override
  _BoardListItemState createState() => _BoardListItemState();
}

class _BoardListItemState extends State<BoardListItem> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = (MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).viewPadding.bottom -
        40);
    double bodyWidth = (MediaQuery.of(context).size.width);
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        bottom: widget.bottomMargin + 10,
        left: bodyWidth * 0.015,
        right: bodyWidth * 0.015,
      ),
      height: bodyHeight,
      width: MediaQuery.of(context).size.width * 2 / 3,
      child: Card(
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      widget.listTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (ctx, i) => BoardListTaskItem(),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey.shade200,
              child: Center(
                child: Text(
                  '+ Add Card',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
