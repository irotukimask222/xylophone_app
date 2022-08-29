import 'package:flutter/material.dart';
import'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({ Key? key }) : super(key: key);
void playSound(int num) {
    final player = AudioPlayer();
     player.play(AssetSource('note$num.wav'));
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () => playSound(1),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () => playSound(2),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () => playSound(3),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () => playSound(4),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () => playSound(5),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                  onPressed: () => playSound(6),
                  child: const Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () => playSound(7),
                  child: const Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

