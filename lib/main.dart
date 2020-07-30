import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded playsounds(color, int j) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playsound(j);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            playsounds(Colors.red, 1),
            playsounds(Colors.orange, 2),
            playsounds(Colors.yellow, 3),
            playsounds(Colors.green, 4),
            playsounds(Colors.blue, 5),
            playsounds(Colors.indigo, 6),
            playsounds(Colors.purple, 7),
          ])),
    ));
  }
}
