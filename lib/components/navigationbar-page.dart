import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class NavigationbarPage extends StatelessWidget {
  const NavigationbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Navigationbar Page')
          )
        ],
      ),
    );
  }
}