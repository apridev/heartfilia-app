import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';
import 'package:heartfilia_app/widgets/wishlist_product_tile.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Wishlist Product',
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
            children: [
              Column(
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
                    margin: EdgeInsets.only(
                        left: defaultMargin, right: defaultMargin),
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
                            nameProfile: 'List Order'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images:
                                'assets/icons/icon_profile_wishlist_product.png',
                            nameProfile: 'Wishlist Product'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_reviews.png',
                            nameProfile: 'Reviews'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_categories.png',
                            nameProfile: 'Categories'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_transaction.png',
                            nameProfile: 'Transaction'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_my_address.png',
                            nameProfile: 'My Address'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_voucers.png',
                            nameProfile: 'Vouchers'),
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
                            images:
                                'assets/icons/icon_profile_complaint_order.png',
                            nameProfile: 'Complaint Order'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images: 'assets/icons/icon_profile_help_center.png',
                            nameProfile: 'Heartfilia Help Center'),
                        SizedBox(
                          height: 18,
                        ),
                        MenuProfileTile(
                            images:
                                'assets/icons/icon_profile_logout_account.png',
                            nameProfile: 'Logout Account'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WishlistProductTile(
            categories: 'Wardah Wardah Beauty',
            nameProduct: 'Acnederm Acne Care Serum',
            images: 'assets/images/product_one.png',
            price: 18.6,
          ),
          // Center(
          //   child: Column(
          //     children: [
          //       Image.asset(
          //         'assets/images/empty_wishlist.png',
          //         width: MediaQuery.of(context).size.width * 0.15,
          //       ),
          //       SizedBox(
          //         height: 8,
          //       ),
          //       Text('Wishlist Product Empty', style: primaryTextStyle.copyWith(
          //         fontSize: 14,
          //         fontWeight: semiBold
          //       ),),
          //       SizedBox(
          //         height: 8,
          //       ),
          //       Text('Please select your favorite product', style: secondaryBlackStyle.copyWith(
          //         fontSize: 14,
          //         fontWeight: medium
          //       ),),
          //       SizedBox(
          //         height: 8,
          //       ),
          //       TextButton(
          //         onPressed: (){
          //           //? Link Url
          //         },
          //         style: ButtonStyle(
          //           overlayColor: MaterialStateProperty.all(Colors.transparent),
          //         ),
          //         child: Container(
          //           width: 70,
          //           height: 40,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(12),
          //             color: pinkOne
          //           ),
          //           child: Center(
          //             child: Text('Home', style: backgroundColorStyle.copyWith(
          //               fontSize: 14,
          //               fontWeight: medium
          //             ),),
          //           )
          //         )
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
