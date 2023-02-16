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
              'Complaint Order',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          ],
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: RefreshIndicator(
          color: pinkOne,
          onRefresh: _refresh,
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ListView(
              children: [
                Column(
                  children: [
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
    return Future.delayed(Duration(seconds: 2));
  }
}
