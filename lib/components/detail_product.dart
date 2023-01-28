import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class DetailProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: <Widget>[
                Container(
                  // ? mengukur gambar
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                    color: pinkThree,
                    image: DecorationImage(
                        image: AssetImage('assets/images/product_four.png'), fit: BoxFit.cover),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: defaultMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/icons/icon_back_detail_product.png',
                              width: MediaQuery.of(context).size.width * 0.1,
                            ),
                          ),
                          Image.asset(
                              'assets/icons/icon_like_detail_product.png', width: MediaQuery.of(context).size.width * 0.1),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  // todo menurunkan konten
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: backgroundColor),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // !Isi Widget Disini
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Wardah Beauty', style: secondaryBlackStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium
                                  ),),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Crystal Secret Brightening Day Cream', style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: medium
                                  ),)
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\$28.99', style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 4
                                ),),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('\$18.01', style: greenColorStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: semiBold
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
