import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Text("Pergunte algo Cabeça de Mexilhão"),
        ),
        backgroundColor: Colors.purple,
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  final rNumberGenerator = Random();

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber;

  void updateBall() {
    setState(() {
      ballNumber = widget.rNumberGenerator.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: updateBall,
        child: Image.asset("images/ball${ballNumber}.png"),
      ),
    );
  }
}
