import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('assets/sounds/note$noteNumber.wav');
  }

  buildKey({required int keyNumber, required color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(keyNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildKey(keyNumber: 1, color: Colors.red),
        buildKey(keyNumber: 2, color: Colors.orange),
        buildKey(keyNumber: 3, color: Colors.yellow),
        buildKey(keyNumber: 4, color: Colors.green),
        buildKey(keyNumber: 5, color: Colors.blue),
        buildKey(keyNumber: 6, color: Colors.indigo),
        buildKey(keyNumber: 7, color: Colors.purple),
      ],
    );
  }
}
