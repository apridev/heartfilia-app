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
                Text('Cart', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
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
        ],
      ),
    );
  }
}
