import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Your Chat',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      endDrawer: Drawer(),
      // !! Add to Widget
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(color: backgroundColor),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                      child: Image.asset(
                        'assets/images/image_chat.png',
                        width: MediaQuery.of(context).size.width * 0.15,
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Heartfilia Care Center',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Good night, This item is on item is on This item is on item is on ',
                          style: secondaryBlackStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Now',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin
            ),
            child: Divider(
              height: 2,
              color: secondaryBlackColor,
            ),
          )
        ],
      ),
    );
  }
}
