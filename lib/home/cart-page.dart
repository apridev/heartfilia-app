import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: 
          [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Cart Page'))
            ],
          ),
        ],
      ),
    );
  }
}