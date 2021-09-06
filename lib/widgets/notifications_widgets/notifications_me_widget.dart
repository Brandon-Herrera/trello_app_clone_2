import 'package:flutter/material.dart';

class NotificationsMeWidget extends StatelessWidget {
  const NotificationsMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/Screenshot_20210905-222534.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
