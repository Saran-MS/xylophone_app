import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playsound(int songNumber) {
    final player = AudioCache();
    player.play('note$songNumber.wav');
  }

  Expanded buildkey({Color color,int soundnum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(soundnum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red,soundnum: 1),
            buildkey(color: Colors.orange,soundnum: 2),
            buildkey(color: Colors.yellow,soundnum: 3),
            buildkey(color: Colors.green,soundnum: 4),
            buildkey(color: Colors.teal,soundnum: 5),
            buildkey(color: Colors.blueAccent,soundnum: 6),
            buildkey(color: Colors.deepPurple,soundnum: 7),
          ],
        )),
      ),
    );
  }
}
