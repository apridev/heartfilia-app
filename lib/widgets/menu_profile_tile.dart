import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class MenuProfileTile extends StatelessWidget {
  final String images;
  final String nameProfile;

  MenuProfileTile(
      {required this.images,
      required this.nameProfile,
      });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              images,
              width: 25,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              nameProfile,
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      ],
    );
  }
}
