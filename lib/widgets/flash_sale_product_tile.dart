import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class FlashSaleProductTile extends StatelessWidget {
  final String images;
  final String categories;
  final String nameProduct;
  final String priceBefore;
  final String priceAfter;
  final double stock;
  final String qty;

  FlashSaleProductTile({
    required this.images,
    required this.categories,
    required this.nameProduct,
    required this.priceBefore,
    required this.priceAfter,
    required this.stock,
    required this.qty,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
        right: 12,
        bottom: 12
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.33,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                color: backgroundColorTwo),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset(images, width: MediaQuery.of(context).size.width * 0.40)),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 12, left: 12, right: 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories,
                      style: grayOneColorStyle.copyWith(
                          fontSize: 12, fontWeight: medium),
                    ),
                    Text(
                      nameProduct,
                      style: primaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          priceBefore,
                          style: secondaryBlackStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 4),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          priceAfter,
                          style: greenColorStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: graythree),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: stock,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: pinkOne),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          'Remaining',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          qty,
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'pieces',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
