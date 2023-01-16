import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class DetailProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Detail Product') ,
          )
        ],
      ),
    );
  }
}