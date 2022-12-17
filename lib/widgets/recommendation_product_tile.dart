import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class RecommendationProductTile extends StatelessWidget {

  final String images;
  final String categories;
  final String nameProduct;

  RecommendationProductTile({
    required this.images,
    required this.categories,
    required this.nameProduct
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03),
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.29,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
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
                color: pinkThree),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                  images,
                  width: 160,
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //? Categories
                Text(
                  categories,
                  style: grayOneColorStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                ),
                SizedBox(
                  height: 6,
                ),
                //?? Product Name
                Text(
                  nameProduct,
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
