import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String text}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(text),
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
            children: [
              buildKey(color: Colors.red, soundNumber: 1, text: 'Do'),
              buildKey(color: Colors.orange, soundNumber: 2, text: 'Re'),
              buildKey(color: Colors.yellow, soundNumber: 3, text: 'Mi'),
              buildKey(color: Colors.green, soundNumber: 4, text: 'Fa'),
              buildKey(
                  color: Colors.lightBlue.shade200, soundNumber: 5, text: 'So'),
              buildKey(color: Colors.indigo, soundNumber: 6, text: 'La'),
              buildKey(color: Colors.purple, soundNumber: 7, text: 'Ti'),
            ],
          ),
        ),
      ),
    );
  }
}
