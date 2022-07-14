import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          questionText,
          style: TextStyle(
              backgroundColor: Color.fromARGB(255, 225, 118, 153),
              fontSize: 26),
          textAlign: TextAlign.center,
        ));
  }
}
