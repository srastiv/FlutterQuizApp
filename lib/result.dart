import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

 String get resultPhrase {
  String resultText;
  if(resultScore<=8){
    resultText = "You are awesome & innocent!";
  }
    else if (resultScore<=12){
      resultText = "Pretty likeable!";
    }
    else if (resultScore<=16){
      resultText = "You are Strange?";
    }
    else {
      resultText = "You are so Bad";
    }
return resultText;
  }
  
 


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz?!"),
            style: TextButton.styleFrom(primary:Colors.amber[400]),
            onPressed: (resetHandler),
            )
        ],
      ),
    );
  }
}