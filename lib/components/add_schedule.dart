import 'package:flutter/material.dart';
import 'package:heartfilia_app/template.dart';

class AddSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Add Schedule')
            )
          ],
        ),
      ),
    );
  }
}
