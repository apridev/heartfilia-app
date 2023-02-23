import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
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
                  Image.asset(
                    'assets/images/heartfilia_home.png',
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Container(
                    child: Row(
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
                              'assets/icons/icon_notification.png',
                              width: 24,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            textInputAction: TextInputAction.search,
                            cursorColor: secondaryBlackColor,
                            autofocus: true,
                            style: TextStyle(color: blackColor),
                            // obscureText: true,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(color: grayTwo)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide(color: grayTwo)),
                                // prefixIcon: Icon(Icons.person),
                                prefixIcon: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/icons_search.png',
                                      width: 18,
                                    )
                                  ],
                                ),
                                hintText: "I’m looking for...",
                                hintStyle:
                                    secondaryBlackStyle.copyWith(fontSize: 14)),
                          )),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/icons/icon_hamburger_filter.png',
                          width: MediaQuery.of(context).size.width * 0.12,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
