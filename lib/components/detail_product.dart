import 'package:flutter/material.dart';
import 'package:heartfilia_app/expanded-tile.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/variant_tile.dart';

class DetailProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
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
                        image: AssetImage('assets/images/product_four.png'),
                        fit: BoxFit.cover),
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
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/icons/icon_back_detail_product.png',
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                          ),
                          Image.asset(
                              'assets/icons/icon_like_detail_product.png',
                              width: MediaQuery.of(context).size.width * 0.12),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  // todo menurunkan konten
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.44),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: backgroundColor),
                  child: Container(
                    margin: EdgeInsets.only(
                        left: defaultMargin, right: defaultMargin),
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
                                  Text(
                                    'Wardah Beauty',
                                    style: secondaryBlackStyle.copyWith(
                                        fontSize: 12, fontWeight: medium),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Crystal Secret Brightening Day Cream Secret Brightening',
                                    style: primaryTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: semiBold,
                                        height: 1.9),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '\$28.99',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: semiBold,
                                      decoration: TextDecoration.lineThrough,
                                      decorationThickness: 4),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '\$18.01',
                                  style: greenColorStyle.copyWith(
                                      fontSize: 14, fontWeight: semiBold),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                      'assets/icons/icon_star_active.png',
                                      width: 20),
                                  Image.asset(
                                      'assets/icons/icon_star_active.png',
                                      width: 20),
                                  Image.asset(
                                      'assets/icons/icon_star_active.png',
                                      width: 20),
                                  Image.asset(
                                      'assets/icons/icon_star_active.png',
                                      width: 20),
                                  Image.asset('assets/icons/icon_star.png',
                                      width: 20),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              child: Text(
                                '(4.6)',
                                style: secondaryBlackStyle.copyWith(
                                    fontSize: 12, fontWeight: semiBold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Description',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expandedtile(
                            text:
                                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Variant',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: semiBold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            VariantTile(
                              name: 'Day Cream',
                              color: pinkOneStyle,
                              border: pinkOne,
                            ),
                            VariantTile(
                              name: 'Day Cream 15ml',
                              color: secondaryBlackStyle,
                              border: grayOne,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ]),
        child: Container(
          margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/chat_detail_page.png',
                      width: 30,
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.10,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    border: Border.all(color: pinkOne, width: 1.2),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, left: 10),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.10,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.20,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: pinkThree,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/product_four.png'),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '\$18.00',
                                                style:
                                                    primaryTextStyle.copyWith(
                                                        fontSize: 12,
                                                        fontWeight: semiBold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Quantity:',
                                                    style: primaryTextStyle
                                                        .copyWith(
                                                            fontSize: 14,
                                                            fontWeight: medium),
                                                  ),
                                                  Text(
                                                    '1231',
                                                    style: primaryTextStyle
                                                        .copyWith(
                                                            fontSize: 14,
                                                            fontWeight: medium),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 10,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.030),
                                        child: Text(
                                          'Variant',
                                          style: primaryTextStyle.copyWith(
                                              fontSize: 14, fontWeight: medium),
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10, right: 10, top: 15),
                                      child: Row(
                                        children: [
                                          VariantTile(
                                            name: 'Day Cream',
                                            color: pinkOneStyle,
                                            border: pinkOne,
                                          ),
                                          VariantTile(
                                            name: 'Day Cream 15ml',
                                            color: secondaryBlackStyle,
                                            border: grayOne,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.020),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total Product',
                                              style: primaryTextStyle.copyWith(
                                                  fontSize: 14,
                                                  fontWeight: medium),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/icons/icons_min_cart.png',
                                                    width: 24,
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Text(
                                                    '1',
                                                    style: primaryTextStyle
                                                        .copyWith(
                                                            fontSize: 14,
                                                            fontWeight: medium),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Image.asset(
                                                    'assets/icons/icons_plus_cart.png',
                                                    width: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03),
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: pinkOne),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              overlayColor:
                                                  MaterialStateProperty.all(
                                                      Colors.transparent)),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/verification-page');
                                          },
                                          child: Text(
                                            'Add to cart',
                                            style:
                                                backgroundColorStyle.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: medium),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Image.asset(
                        'assets/icons/icon_cart_detail_product.png',
                        width: 24,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: pinkOne),
                child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
