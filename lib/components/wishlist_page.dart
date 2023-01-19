import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';
import 'package:heartfilia_app/widgets/wishlist_product_tile.dart';

class WishlistPage extends StatelessWidget {
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
              margin: EdgeInsets.only(
                left: defaultMargin
              ),
              child: Text(
                'Wishlist Product',
                style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 10
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
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
        child: ListView(
          children: 
            [Column(
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
          ],
        ),
      ),
    );
  }
}
