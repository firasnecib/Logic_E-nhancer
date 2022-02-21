import 'package:flutter/material.dart';

class Quest extends StatelessWidget {
  final String question ;
  Quest(this.question);
  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(question,
    style:TextStyle(fontSize: 28),
    textAlign: TextAlign.center,
    ),
    );
  }
}
