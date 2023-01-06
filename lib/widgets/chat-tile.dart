import 'dart:async';

import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ChatTile extends StatelessWidget {

  final String images;
  final String nameUser;
  final String description;
  final String time;

  ChatTile({
    required this.images,
    required this.nameUser,
    required this.description,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat-page');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(color: backgroundColor),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                  child: Image.asset(
                images,
                width: MediaQuery.of(context).size.width * 0.15,
              )),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameUser,
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      description,
                      style: secondaryBlackStyle.copyWith(
                          fontSize: 12, fontWeight: medium),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
