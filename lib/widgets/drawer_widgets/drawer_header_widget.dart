import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mass_mocha_self_portrait.jpeg'),
                ),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Brandon H',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '@brandonh',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'brandonherrer14@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
