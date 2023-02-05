import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class EditProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Edit Profile'),
            )
          ],
        ),
      ),
    );
  }
}