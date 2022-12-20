import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class CalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Daily Schedule', style: primaryTextStyle.copyWith(
          fontSize: 14,
          fontWeight: semiBold
        ),),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: defaultMargin
            ),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/icon_hamburger.png',
                  width: 24,
                )),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          // !!don't fixed automatic
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.arrow_back_ios_rounded)
              ),
              Text('August', style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium
              ),),
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.arrow_forward_ios_rounded)
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: 14,
              left: defaultMargin,
              right: defaultMargin
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mon', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Tue', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Today', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Thu', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Sat', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Sun', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Sun', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
