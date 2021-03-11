import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  int leftDice = 1, rightDice = 1;
  final Random rNumberGenerator;

  @override
  _DicePageState createState() => _DicePageState();

  DicePage() : rNumberGenerator = Random() {
    leftDice = rNumberGenerator.nextInt(6) + 1;
    rightDice = rNumberGenerator.nextInt(6) + 1;
  }
}

class _DicePageState extends State<DicePage> {
  void updateDice() {
    setState(() {
      widget.leftDice = widget.rNumberGenerator.nextInt(6) + 1;
      widget.rightDice = widget.rNumberGenerator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice${widget.leftDice}.png"),
              onPressed: updateDice,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice${widget.rightDice}.png"),
              onPressed: updateDice,
            ),
          ),
        ],
      ),
    );
  }
}
