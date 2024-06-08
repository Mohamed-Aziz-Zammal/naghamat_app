import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Music App'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final player = AudioCache();
                player.play('music-1.mp3');

              },
              child: Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
