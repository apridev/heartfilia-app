import 'package:flutter/material.dart';
import 'package:heartfilia_app/components/calender_page.dart';
import 'package:heartfilia_app/components/chat_page.dart';
import 'package:heartfilia_app/components/home_page.dart';
import 'package:heartfilia_app/components/wishlist_page.dart';
import 'package:heartfilia_app/home/login_page.dart';
import 'package:heartfilia_app/components/profile_page.dart';
import 'package:heartfilia_app/template.dart';

class NavigationbarPage extends StatefulWidget {
  @override
  State<NavigationbarPage> createState() => _NavigationbarPageState();
}

class _NavigationbarPageState extends State<NavigationbarPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget buttomNavbar() {
      return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: secondaryBlackColor,
          )
        ]),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundColor,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              // print(value);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.only(top: 12),
                    child: currentIndex == 0
                        ? Image.asset(
                            'assets/icons/icon_home_active.png',
                            width: MediaQuery.of(context).size.width * 0.07,
                          )
                        : Image.asset(
                            'assets/icons/icon_home.png',
                            width: MediaQuery.of(context).size.width * 0.07,
                          )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    padding: EdgeInsets.only(
                      top: 12,
                    ),
                    child: currentIndex == 1
                        ? Image.asset(
                            'assets/icons/icon_calender_active.png',
                            width: MediaQuery.of(context).size.width * 0.07,
                          )
                        : Image.asset(
                            'assets/icons/icon_calender.png',
                            width: MediaQuery.of(context).size.width * 0.07,
                          )),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 12),
                  child: currentIndex == 2
                      ? Image.asset(
                          'assets/icons/icon_like_active.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        )
                      : Image.asset(
                          'assets/icons/icon_like.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 12),
                  child: currentIndex == 3
                      ? Image.asset(
                          'assets/icons/icon_chat_active.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        )
                      : Image.asset(
                          'assets/icons/icon_chat.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(top: 12),
                  child: currentIndex == 4
                      ? Image.asset(
                          'assets/icons/icon_profile_active.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        )
                      : Image.asset(
                          'assets/icons/icon_profile.png',
                          width: MediaQuery.of(context).size.width * 0.07,
                        ),
                ),
                label: ''),
          ],
        ),
      );
    }

    Widget bodyHome() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return CalenderPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ChatPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: buttomNavbar(),
      body: bodyHome(),
    );
  }
}
