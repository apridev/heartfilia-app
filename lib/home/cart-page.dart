import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: backgroundColor,
            titleSpacing: 0,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        'assets/icons/icons_arrow_left_cart.png',
                        width: 24,
                      )),
                ),
                Text(
                  'Cart',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_options_cart.png',
                        width: 24,
                      )),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 10, left: defaultMargin, right: defaultMargin),
                  width: double.infinity,
                  height: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: backgroundColor,
                      border: Border.all(color: grayTwo)),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        color: pinkOne,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image.asset('assets/images/product_five.png', width: MediaQuery.of(context).size.width * 0.22,)
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Categories', style: secondaryBlackStyle.copyWith(
                                fontSize: 12,
                                fontWeight: medium
                              ),),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Crystal Secret Brightening Day Cream Brightening Day Cream Crystal Secret Brightening Day Cream Brightening Day Cream', style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text('Price', style: greenColorStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold
                              ),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
