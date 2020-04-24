import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    );
  }
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  void playSound(int number) {
    final player = AudioCache();
    player.play('assets/note$number.wav');
  }
   
   Widget buildkey(int soundnumber , Color color)
   {
     return Expanded(
              child: FlatButton(
                color: color,
                onPressed: () {
                  playSound(soundnumber);
                }, child: null,
              ),
            );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           buildkey( 1,Colors.red),
           buildkey( 2,Colors.purple),
           buildkey( 3,Colors.yellow),
           buildkey( 4,Colors.pink),
           buildkey( 5,Colors.orange),
           buildkey( 6,Colors.teal),
           buildkey( 7,Colors.tealAccent),                           
          ],
        ),
      ),
    );
  }
}
