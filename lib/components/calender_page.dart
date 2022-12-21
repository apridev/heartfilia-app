import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/schedule_tile.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Daily Schedule',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: defaultMargin),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/icon_hamburger.png',
                  width: 24,
                )),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          // !!don't fixed automatic
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios_rounded)),
              Text(
                'August',
                style:
                    primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_rounded)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: 14, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mon',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Tue',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Today',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Thu',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Sat',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Sun',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'Sun',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: defaultMargin,
                right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 30,
                    height: 30,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: greenOne),
                    child: Center(
                      child: Text(
                        '11',
                        style: backgroundColorStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Container(
                    width: 30,
                    height: 30,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: greenOne),
                    child: Center(
                      child: Text(
                        '12',
                        style: backgroundColorStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: pinkOne, width: 2)),
                    child: Center(
                      child: Text(
                        '11',
                        style: pinkOneStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Text(
                  '14',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                Text(
                  '15',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                Text(
                  '16',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                Text(
                  '17',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: defaultMargin,
                      right: defaultMargin),
                  child: Column(
                    children: [
                      // ?? Not Fixed
                      Row(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
