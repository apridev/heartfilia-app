import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/product_cart_tile.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: CustomScrollView(
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
                    ProductCartTile(),
                    SizedBox(
                      height: defaultMargin,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
          decoration: BoxDecoration(color: backgroundColor, boxShadow: [
            BoxShadow(
              color: graythree,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]),
          child: Column(
            children: [
              SizedBox(
                height: defaultMargin,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: defaultMargin,),
                        child: TextField(
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          textInputAction: TextInputAction.go,
                          cursorColor: grayTwo,
                          style: TextStyle(color: blackColor),
                          // obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: grayTwo)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(color: grayTwo)),
                              // prefixIcon: Icon(Icons.person),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(right: 10),
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(18),
                                    ),
                                    color: pinkOne),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/icons_discount.png',
                                      width: MediaQuery.of(context).size.width * 0.09,
                                    ),
                                  ],
                                ),
                              ),
                              hintText: "Code voucher...",
                              hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: defaultMargin
                    ),
                    child: TextButton(
                      onPressed: (){}, 
                      child: Text('Add Voucher', style: pinkOneStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold
                      ),)
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: grayTwo,
                thickness: 0.7,
                indent: defaultMargin,
                endIndent: defaultMargin,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'Items',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '(3)',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '\$30.52',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Discount',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ),
                    Text(
                      '\$0',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: grayTwo,
                thickness: 0.7,
                indent: defaultMargin,
                endIndent: defaultMargin,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Total Price',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: semiBold),
                      ),
                    ),
                    Text(
                      '\$0',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18), color: pinkOne),
                  child: TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      // create link;
                    },
                    child: Text(
                      'Payment',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
