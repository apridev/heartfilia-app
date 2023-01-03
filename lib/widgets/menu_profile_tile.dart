import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class MenuProfileTile extends StatelessWidget {
  final String images;
  final String nameProfile;

  MenuProfileTile(
      {required this.images,
      required this.nameProfile,
      });

     bool curentindex = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'My Activity',
          style: primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Image.asset(
              images,
              width: 25,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                nameProfile,
                style:
                    primaryTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            ),
            // Column(
            //   children: [
            //    curentindex == false ? Container(
            //       height: 25,
            //       width: 25,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(30), color: pinkOne),
            //       child: Center(
            //           child: Text(
            //         '1',
            //         style: backgroundColorStyle.copyWith(
            //             fontSize: 14, fontWeight: medium),
            //       )),
            //     ) : Container(
            //       height: 0,
            //       width: 0,
            //     ),
            //   ],
            // ),
          ],
        ),
      ],
    );
  }
}
