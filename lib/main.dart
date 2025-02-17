import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(int soundNumber){
      final player = AudioCache();
      player.play("note$soundNumber.wav");
    }
    Expanded buildKey(Color color, int soundNumber){
      return Expanded(
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: TextButton.styleFrom(backgroundColor: color),
        ),
      );
    }



    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow ,3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo,6),
              buildKey(Colors.purple,7),

            ],
          )
        ),
      ),
    );
  }
}

