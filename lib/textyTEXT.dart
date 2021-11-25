import 'package:flutter/material.dart';

class TextyTEXT extends StatelessWidget {
  final String thaText;
  TextyTEXT(this.thaText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        thaText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(30),
    );
  }
}
