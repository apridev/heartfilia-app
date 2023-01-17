import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class CategoriesTile extends StatelessWidget {

  final String nameCategories;
  final TextStyle type;
  final FontWeight weight;

  CategoriesTile({
    required this.nameCategories,
    required this.type,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: defaultMargin
      ),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          nameCategories,
          style: type.copyWith(fontSize: 14, fontWeight: weight),
        ),
      ),
    );
  }
}
