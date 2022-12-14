import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget headerNav() {
      return Container(
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
      );
    }

    Widget searchproduct() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                  ),
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
                          children: [Icon(Icons.search)],
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
              child: Image.asset(
                'assets/icons/icon_hamburger_filter.png',
                width: MediaQuery.of(context).size.width * 0.12,
              ),
            )
          ],
        ),
      );
    }

    Widget imageSlader() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.04,
            left: 20,
            right: 20),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset('assets/images/image_slader.png')),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 15),
                width: 12,
                height: 12,
                decoration:
                    BoxDecoration(color: pinkOne, shape: BoxShape.circle),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: 20,
            right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'All',
                  style:
                      pinkOneStyle.copyWith(fontSize: 14, fontWeight: semiBold),
                ),
              ),
            ),
            Container(
              child: Text(
                'On Sale',
                style: grayOneColorStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              child: Text(
                'New arrivals',
                style: grayOneColorStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              child: Text(
                'Package',
                style: grayOneColorStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                'Healty',
                style: grayOneColorStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold),
              ),
            ),
          ],
        ),
      );
    }

    Widget flashSale() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: defaultMargin,
            right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Flash Sale',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold)),
                  SizedBox(
                    width: 12,
                  ),

                  //todo Flash Sale don't Otomatis
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '12',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '04',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: pinkOne),
                    child: Text(
                      '59',
                      style: backgroundColorStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'See all',
              style: secondaryBlackStyle.copyWith(
                  fontSize: 14, fontWeight: semiBold),
            )
          ],
        ),
      );
    }

    Widget productSale() {
      return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: 20,
            right: 20),
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  color: pinkThree),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset('assets/images/product_one.png',
                          width: 160)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headerNav(),
        searchproduct(),
        imageSlader(),
        categories(),
        flashSale(),
        productSale()
      ],
    ));
  }
}
