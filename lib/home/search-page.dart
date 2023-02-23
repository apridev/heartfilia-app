import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: 
            [Container(
              margin: EdgeInsets.only(
                right: 10,
                left: 10
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: Icon(Icons.arrow_back_rounded, color: blackColor,)),
                  Image.asset('assets/images/heartfilia_home.png',
                      width: MediaQuery.of(context).size.width * 0.2),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cart-page');
                            },
                            icon: Image.asset(
                              'assets/icons/icon_cart.png',
                              width: 24,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/icon_notification.png',
                              width: 24,
                            )),
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
