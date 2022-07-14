import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler,  this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber[300],
          onPrimary: Colors.red[400],
          ), // Background color
        child: Text(answerText),
        onPressed: selectHandler, //this is a comment
      ),
    );
  }
}
