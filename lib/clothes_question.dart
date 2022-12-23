import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {

  String _questionConent;

  ClothesQuestion(this._questionConent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        _questionConent,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }

}