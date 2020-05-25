import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playsound(int songNumber)
  {
    final player = AudioCache();
    player.play('note$songNumber.wav');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(1);
                    },

                    color: Colors.red , ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(2);
                    },
                    color: Colors.orange,),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(3);
                    },
                    color: Colors.yellow,),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(4);
                    },
                    color: Colors.green,),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(5);
                    },
                    color: Colors.teal,),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(6);
                    },
                    color: Colors.blueAccent,),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      playsound(7);
                    },
                    color: Colors.deepPurple,),
                ),
              ],
            )),
      ),
    );
  }
}

