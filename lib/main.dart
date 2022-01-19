import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    // or as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$note.wav');
  }

  Expanded buildKey( { Color color, int note}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
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
              buildKey( color: Colors.red, note: 1),
              buildKey( color: Colors.green, note: 2),
              buildKey( color: Colors.yellow, note: 3),
              buildKey( color: Colors.blueAccent, note: 4),
              buildKey( color: Colors.orange,note: 5),
            ],
          ),
        ),
      ),
    );
  }
}
