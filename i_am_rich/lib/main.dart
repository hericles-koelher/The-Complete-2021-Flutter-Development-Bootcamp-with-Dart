import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // StatelessWidget turns this class into a widget
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("I Am Rich")),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image.asset("images/diamond.png"),
      ),
      backgroundColor: Colors.blueGrey,
    ));
  }
}
