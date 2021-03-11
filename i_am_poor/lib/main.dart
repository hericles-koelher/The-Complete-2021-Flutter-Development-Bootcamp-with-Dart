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
          backgroundColor: Colors.yellow[900],
          title: Center(child: Text("I Am Poor")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "images/poor_cartoon.png",
                scale: 2,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
