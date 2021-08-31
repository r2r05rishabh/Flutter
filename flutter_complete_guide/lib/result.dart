import 'dart:io';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'score = ' + resultScore.toString() + '/95';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.black,
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 30),
            ),
            textColor: Colors.blueAccent,
          ),
          FlatButton(
            color: Colors.red,
            onPressed: () => exit(0),
            child: Text(
              'Exit',
              style: TextStyle(fontSize: 30),
            ),
            textColor: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
