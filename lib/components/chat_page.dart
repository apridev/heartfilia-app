import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';
import 'package:heartfilia_app/widgets/chat-tile.dart';
import 'package:heartfilia_app/widgets/menu_profile_tile.dart';

// !! Perbaiki Fitur Chat

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Chat',
              style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.filter_list)
            )
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      // !! Add to Widget
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: RefreshIndicator(
          color: pinkOne,
          onRefresh: _refresh,
          child: GestureDetector(
            onTap: (){
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
            margin: EdgeInsets.only(
              bottom: 10
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    textInputAction: TextInputAction.search,
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
                            borderSide: BorderSide(color: grayTwo)),
                        // prefixIcon: Icon(Icons.person),
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.search)],
                        ),
                        hintText: "Searching chat...",
                        hintStyle: secondaryBlackStyle.copyWith(fontSize: 14)),
                  )),
                ),
              ],
            ),
                  ),
                ),
                    ChatTile(
                      images: 'assets/images/image_chat.png',
                      nameUser: 'Heartfilia Center',
                      description:
                          'Good night, This item is on item is on This item is on item is on',
                      time: 'Now',
                    ),
                    ChatTile(
                      images: 'assets/images/image_chat.png',
                      nameUser: 'Heartfilia Center',
                      description:
                          'Good night, This item is on item is on This item is on item is on',
                      time: 'Now',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _refresh() {
    return Future.delayed(
      Duration(seconds: 2)
    );
  }
}
