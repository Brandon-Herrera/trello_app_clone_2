import 'package:flutter/material.dart';

import '../widgets/notifications_widgets/notifications_all_widget.dart';
import '../widgets/notifications_widgets/notifications_me_widget.dart';
import '../widgets/notifications_widgets/notifications_comments_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  var _scrollController = PageController(viewportFraction: 1.0);

  @override
  void initState() {
    _scrollController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.white38,
                ),
                SizedBox(width: 20),
                PopupMenuButton(
                  itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Push notification settings'),
                    ),
                  ],
                  icon: Icon(Icons.more_vert),
                  // onSelected: () {},
                ),
                SizedBox(width: 10),
              ],
            )
          ],
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop((context));
            },
          ),
          centerTitle: false,
          title: Text(
            'Notifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.grey.shade700,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: 'ALL'),
                  Tab(text: 'ME'),
                  Tab(text: 'COMMENTS'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  NotificationsAllWidget(),
                  NotificationsMeWidget(),
                  NotificationsCommentsWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
