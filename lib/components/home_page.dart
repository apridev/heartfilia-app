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
                top: MediaQuery.of(context).size.height * 0.02
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 15),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: pinkOne,
                  shape: BoxShape.circle
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories(){
      return Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03,
          left: 20,
          right: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: GestureDetector(
                onTap: (){},
                child: Text('All', style: pinkOneStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
              ),
            ),
            Container(
              child: Text('On Sale', style: grayOneColorStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            ),
            Container(
              child: Text('New arrivals', style: grayOneColorStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            ),
            Container(
              child: Text('Package', style: grayOneColorStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 12
              ),
              child: Text('Healty', style: grayOneColorStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
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
        categories()
      ],
    ));
  }
}
