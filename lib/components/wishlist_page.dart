import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';
import 'package:heartfilia_app/widgets/wishlist_product_tile.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                titleSpacing: 0,
                backgroundColor: backgroundColor,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: defaultMargin),
                      child: Text(
                        'Whislist Product',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: semiBold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
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
                )),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WishlistProductTile(
                    categories: 'Wardah Wardah Beauty',
                    nameProduct: 'Acnederm Acne Care Serum',
                    images: 'assets/images/product_one.png',
                    price: 18.6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
