import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/daily_schedule_tile.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Daily Schedule',
                style: primaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart-page');
                      },
                      icon: Image.asset(
                        'assets/icons/icon_cart.png',
                        width: 24,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_notification.png',
                        width: 24,
                      )),
                ],
              ),
            ),
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: RefreshIndicator(
          color: pinkOne,
          onRefresh: _refresh,
          child: ListView(
            children: [
              Column(
                children: [
                  // !!don't fixed automatic
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios_rounded)),
                      Text(
                        'August',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
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
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: greenOne),
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
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: greenOne),
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
                              // ??Gesture Detector
                              DottedBorder(
                                color: grayTwo,
                                strokeWidth: 2,
                                borderType: BorderType.RRect,
                                radius: Radius.circular(12),
                                dashPattern: [10, 5],
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: backgroundColor),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: defaultMargin,
                                        right: defaultMargin),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Add step / product',
                                          style: primaryTextStyle.copyWith(
                                              fontSize: 14,
                                              fontWeight: semiBold),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/add-schedule-page');
                                          },
                                          child: Image.asset(
                                            'assets/icons/icon_create_calender.png',
                                            width: 27,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // ?? Not Fixed
                              DailyScheduleTile(
                                images: 'assets/images/image_moon.png',
                                categories: 'Sun Screen',
                                name: 'Wardah UV Shield Essential Sunscreen...',
                                checkMode: 'assets/icons/icon_checklist_on.png',
                              ),
                              DailyScheduleTile(
                                images: 'assets/images/image_sun.png',
                                categories: 'Toner',
                                name:
                                    "Kiehl's Calendula Herbal Extract Alcohol...",
                                checkMode: "assets/icons/icon_checklist_on.png",
                              ),
                              DailyScheduleTile(
                                images: 'assets/images/image_moon.png',
                                categories: 'Clenser',
                                name: "Garnier Micellar Cleansing Water Pink ",
                                checkMode:
                                    "assets/icons/icon_checklist_off.png",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 2));
  }
}
