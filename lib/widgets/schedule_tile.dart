import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class ScheduleTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 12, left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sun Screen',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Wardah UV Shield Essential Sunscreen beautiful',
                      style: secondaryBlackStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 12),
                    child: Image.asset(
                      'assets/icons/icon_checklist_on.png',
                      width: 20,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
