import 'package:flutter/material.dart';

class HomeBoardListItem extends StatelessWidget {
  final int listCountPassedDown;

  HomeBoardListItem(this.listCountPassedDown);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listCountPassedDown,
      itemBuilder: (ctx, i) => Container(
        height: 55,
        width: double.infinity,
        child: Container(
          color: Colors.grey[200],
          child: Row(
            children: [
              SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.network(
                    'https://s9.limitedrun.com/images/1378714/Turnover_Promo_-51.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Reading and Entertainment',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
