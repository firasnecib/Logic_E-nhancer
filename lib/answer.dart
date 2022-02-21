import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answer;
  final String answerText;
  Answer(this.answer,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 550,right: 550,top: 10,bottom: 10),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: answer,
      ),
    );
  }
}
