import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.pink[900],
        title: Text(
          'Ask me a Question',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'SourceSansPro',
          ),
        ),
      ),
      body: AskQst(),
    ),
  ));
}

class AskQst extends StatefulWidget {
  @override
  _AskQstState createState() => _AskQstState();
}

class _AskQstState extends State<AskQst> {
  @override
  var number = 4;
  void answer() {
    setState(() {
      number = Random().nextInt(4);
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/sheet$number.png'),
        onPressed: () {
          answer();
        },
      ),
    );
  }
}
