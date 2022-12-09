import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/heartfilia_home.png',
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_cart.png',
                        width: 24,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_hamburger.png',
                        width: 24,
                      )),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,),
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: pinkOne,
                      style: TextStyle(color: blackColor),
                      // obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: pinkOne)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(color: grayOne)),
                          // prefixIcon: Icon(Icons.person),
                          prefixIcon: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search)
                            ],
                          ),
                          hintText: "I’m looking for...",
                          hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
                    )),
              ),
              SizedBox(
                width: 12,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12,
                ),
                child: Image.asset('assets/icons/icon_hamburger_filter.png', width: MediaQuery.of(context).size.width * 0.12,),
              )
            ],
          ),
        )
      ],
    ));
  }
}
