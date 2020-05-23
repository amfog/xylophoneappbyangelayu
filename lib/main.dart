import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch ,
            children: <Widget>[
              Expanded(
                child: FlatButton(color: Colors.red, onPressed: () {
                  PlaySound(1);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.orange, onPressed: () {
                  PlaySound(2);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.yellow, onPressed: () {
                  PlaySound(3);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.greenAccent, onPressed: () {
                  PlaySound(4);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.teal, onPressed: () {
                  PlaySound(5);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.green, onPressed: () {
                  PlaySound(6);
                }),
              ),
              Expanded(
                child: FlatButton(color: Colors.purple, onPressed: () {
                  PlaySound(7);
                }),
              ),
             /* Expanded(
                child: FlatButton(color: Colors.red, onPressed: () {
                  final player =AudioCache();
                  player.play ('note8.aac');
                },child: Text('USE WITH CAUTION!!',style: TextStyle(color: Colors.black,fontSize: 30.0),),),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
