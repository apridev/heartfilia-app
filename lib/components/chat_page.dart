import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';

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
                    height: 210,
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
