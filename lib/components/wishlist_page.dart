import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Wishlist Product',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      endDrawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/empty_wishlist.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Wishlist Product Empty', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                SizedBox(
                  height: 8,
                ),
                Text('Please select your favorite product', style: secondaryBlackStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium
                ),),
                SizedBox(
                  height: 8,
                ),
                TextButton(
                  onPressed: (){
                    //? Link Url
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: pinkOne
                    ),
                    child: Center(
                      child: Text('Home', style: backgroundColorStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                      ),),
                    )
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
