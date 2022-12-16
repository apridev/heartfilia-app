import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class CategoriesTile extends StatelessWidget {

  final String nameCategories;
  final TextStyle type;

  CategoriesTile({
    required this.nameCategories,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 18
      ),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          nameCategories,
          style: type.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
      ),
    );
  }
}
