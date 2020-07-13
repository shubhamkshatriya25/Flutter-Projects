import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded createTile(int n, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final audioPlayer = AudioCache();
          audioPlayer.play('note$n.wav');
        },
        color: c,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createTile(1,Colors.red),
              createTile(2,Colors.green),
              createTile(3,Colors.blue),
              createTile(4,Colors.yellow),
              createTile(5,Colors.pink),
              createTile(6,Colors.green.shade900),
              createTile(7,Colors.blue.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
