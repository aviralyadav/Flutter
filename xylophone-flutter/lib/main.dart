import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: Container(
          child: RaisedButton(
        child: Text(''),
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.pink, 3),
              buildKey(Colors.teal, 4),
              buildKey(Colors.blueAccent, 5),
              buildKey(Colors.amber, 6),
              buildKey(Colors.green, 7)
            ],
          ),
        ),
      ),
    );
  }
}
