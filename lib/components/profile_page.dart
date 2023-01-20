import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/list-icon-help-center-tile.dart';
import 'package:heartfilia_app/widgets/list-icons-profile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget profileImage() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/test_images.png',
                width: 70,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rayna Korsgaard',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'raynaKorsgaard@gmail.com',
                    style: secondaryBlackStyle.copyWith(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/icon_setting.png',
                      width: 25,
                    )),
              ],
            )
          ],
        ),
      );
    }

    Widget menubar() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: defaultMargin,
            right: defaultMargin),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: secondaryBlackColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Text(
                    'Sign in affiliate',
                    style: secondaryBlackStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.chevron_right_rounded)
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                  border: Border.all(color: secondaryBlackColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Text(
                    'Other services',
                    style: secondaryBlackStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(Icons.chevron_right_rounded)
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget titleActivity() {
      return Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
              left: defaultMargin,
              right: defaultMargin),
          child: Text(
            'My Activity',
            style:
                primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ));
    }

    Widget titleHelpCenter() {
      return Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03,
              left: defaultMargin,
              right: defaultMargin),
          child: Text(
            'Help Center',
            style:
                primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          ));
    }

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
                'Your Profile',
                style: primaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: 
            [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileImage(),
                menubar(),
                titleActivity(),
                ListIconsTile(),
                titleHelpCenter(),
                ListIconHelpCenterTile(),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 40
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Heartfillia Care App', style: grayTwoColorStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium
                        ),),
                        Text('V.1.1', style: grayTwoColorStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
