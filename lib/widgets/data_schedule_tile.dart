import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class DataScheduleTile extends StatelessWidget {

  final String timer;
  final String tittle;
  final String description;

  DataScheduleTile({
    required this.timer,
    required this.tittle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultMargin
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            timer,
            style: primaryTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittle,
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    description,
                    style: secondaryBlackStyle.copyWith(
                        fontSize: 13,
                        fontWeight: medium,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '10 am - 5 pm',
                    style: primaryTextStyle.copyWith(
                        fontSize: 13, fontWeight: medium),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
