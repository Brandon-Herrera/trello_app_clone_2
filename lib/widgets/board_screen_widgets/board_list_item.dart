import 'package:flutter/material.dart';

class BoardListItem extends StatefulWidget {
  const BoardListItem({Key? key}) : super(key: key);

  @override
  _BoardListItemState createState() => _BoardListItemState();
}

class _BoardListItemState extends State<BoardListItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * (1 / 3 * 0.1),
        right: MediaQuery.of(context).size.width * (1 / 3 * 0.1),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.84,
        width: MediaQuery.of(context).size.width * 2 / 3,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Red',
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
            Card(
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width * (2 / 3 * 0.95),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
