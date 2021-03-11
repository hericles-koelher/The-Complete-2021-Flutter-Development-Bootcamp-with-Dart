import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Xylophone(),
        ),
      ),
    );
  }
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        XylophoneTile(Colors.red, "note1.wav"),
        XylophoneTile(Colors.orange, "note2.wav"),
        XylophoneTile(Colors.yellow, "note3.wav"),
        XylophoneTile(Colors.green, "note4.wav"),
        XylophoneTile(Colors.teal, "note5.wav"),
        XylophoneTile(Colors.blue, "note6.wav"),
        XylophoneTile(Colors.purple, "note7.wav"),
      ],
    );
  }
}

class XylophoneTile extends StatelessWidget {
  final Color color;
  final String audioName;

  XylophoneTile(this.color, this.audioName) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play(audioName);
        },
        color: color,
      ),
    );
  }
}
