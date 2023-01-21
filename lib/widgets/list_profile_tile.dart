import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ListProfileTile extends StatelessWidget {

  final String icons;
  final String nameIcons;

  ListProfileTile({
    required this.icons,
    required this.nameIcons
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              left: defaultMargin,
              right: defaultMargin),
          child: Row(
            children: [
              Image.asset(
                icons,
                width: 25,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                nameIcons,
                style:
                    primaryTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              )
            ],
          ),
        ),
      ],
    );
  }
}
