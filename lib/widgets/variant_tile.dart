import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class VariantTile extends StatelessWidget {

  final String name;
  final TextStyle color;
  final Color border;

  VariantTile({
    required this.name, required this.color, required this.border
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: border),
          borderRadius: BorderRadius.circular(12)),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)
        ),
          onPressed: () {},
          child: Text(
            name,
            style: color.copyWith(fontSize: 12, fontWeight: medium),
          )),
    );
  }
}
