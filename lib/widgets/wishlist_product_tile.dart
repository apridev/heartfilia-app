import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class WishlistProductTile extends StatelessWidget {

  final String categories;
  final String nameProduct;
  final String images;
  final double price;

  WishlistProductTile({
    required this.categories,
    required this.nameProduct,
    required this.images,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(
                left: defaultMargin, right: defaultMargin, top: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.18,
                    height: MediaQuery.of(context).size.height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: pinkThree,
                    ),
                    child: Column(
                      children: [Image.asset(images)],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categories,
                          style: grayOneColorStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          nameProduct,
                          style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: medium,
                              overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\$${price.toString()}',
                          style: greenColorStyle.copyWith(
                              fontSize: 12, fontWeight: semiBold),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/wishlist_icon.png',
                        width: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}