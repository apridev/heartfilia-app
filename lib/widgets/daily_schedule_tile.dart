import 'package:flutter/material.dart';
import 'package:heartfilia_app/widgets/schedule_tile.dart';

class DailyScheduleTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12
      ),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/image_sun.png',
                width: 40,
              ),
            ],
          ),
          ScheduleTile(),
        ],
      ),
    );
  }
}
