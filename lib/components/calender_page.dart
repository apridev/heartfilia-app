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
        backgroundColor: backgroundColor,
        title: Text(
          'Daily Schedule',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      endDrawer: Drawer(
        child: ScrollConfiguration(
          behavior: ScrollBehavior().copyWith(overscroll: false),
          child: ListView(
            padding: EdgeInsets.all(0),
            children: 
              [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: double.infinity,
                    decoration: BoxDecoration(color: pinkOne),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/img_profile.png',
                            width: 80,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Rayna Lipshutz',
                          style: backgroundColorStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/icon_profile_profile_edit.png',
                              width: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/icons/icon_profile_profile_setting.png',
                              width: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: defaultMargin, right: defaultMargin),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'My Activity',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_list_order.png', 
                          nameProfile: 'List Order'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_wishlist_product.png', 
                          nameProfile: 'Wishlist Product'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_reviews.png', 
                          nameProfile: 'Reviews'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_categories.png', 
                          nameProfile: 'Categories'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_transaction.png', 
                          nameProfile: 'Transaction'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_my_address.png', 
                          nameProfile: 'My Address'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_voucers.png', 
                          nameProfile: 'Vouchers'
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Help Center',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_complaint_order.png', 
                          nameProfile: 'Complaint Order'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_help_center.png', 
                          nameProfile: 'Heartfilia Help Center'
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                          images: 'assets/icons/icon_profile_logout_account.png', 
                          nameProfile: 'Logout Account'
                        ),
                        SizedBox(
                          height: 30,
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
      body: ListView(
        children: 
          [Column(
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
                          // ??Gesture Detector
                          DottedBorder(
                            color: grayTwo,
                            strokeWidth: 2,
                            borderType: BorderType.RRect,
                            radius: Radius.circular(12),
                            dashPattern: [10, 5],
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: backgroundColor),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: defaultMargin, right: defaultMargin),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Add step / product',
                                      style: primaryTextStyle.copyWith(
                                          fontSize: 14, fontWeight: semiBold),
                                    ),
                                    Image.asset(
                                      'assets/icons/icon_create_calender.png',
                                      width: 27,
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
                            name: "Kiehl's Calendula Herbal Extract Alcohol...",
                            checkMode: "assets/icons/icon_checklist_on.png",
                          ),
                          DailyScheduleTile(
                            images: 'assets/images/image_moon.png',
                            categories: 'Clenser',
                            name: "Garnier Micellar Cleansing Water Pink ",
                            checkMode: "assets/icons/icon_checklist_off.png",
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
    );
  }
}
