import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

playMusic(int No) {
      final player = AudioPlayer();
      player.play(DeviceFileSource(
          '/Users/pawansapkota/Desktop/Flutter Project/xylophone-flutter/assets/note$No.wav'));
    }
Expanded play(int number, Color color)
{
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color,
      ),
      onPressed: () {
        playMusic(number);
      }, child: null,

    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone for you'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                play(1,Colors.cyan),
                play(2,Colors.yellow),
                play(3,Colors.blue),
                play(4,Colors.grey),
                play(5,Colors.red),
                play(6,Colors.green),
                play(7,Colors.orange),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
