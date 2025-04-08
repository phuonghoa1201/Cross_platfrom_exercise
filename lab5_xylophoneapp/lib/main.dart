import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.mp3')); // Chạy file note1.mp3 -> note7.mp3
  }

  Expanded buildKey({required int note, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(note),
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: const Center(child: Text('XYLOPHONE')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.green),
              buildKey(note: 5, color: Colors.blue),
              buildKey(note: 6, color: Colors.indigo),
              buildKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
