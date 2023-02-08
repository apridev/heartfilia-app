import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ProductCartTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 10, left: defaultMargin, right: defaultMargin, bottom: 5),
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          border: Border.all(color: graythree)),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.22,
            color: backgroundColorTwo,
            child: ScrollConfiguration(
              behavior: ScrollBehavior().copyWith(overscroll: false),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/product_five.png',
                      width: MediaQuery.of(context).size.width * 0.25,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: secondaryBlackStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Crystal Secret Brightening Day Cream Brightening Day Cream Crystal Secret Brightening Day Cream Brightening Day Cream',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '\$18.1',
                    style: greenColorStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icons_min_cart.png',
                  width: 24,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/icons_plus_cart.png',
                  width: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
