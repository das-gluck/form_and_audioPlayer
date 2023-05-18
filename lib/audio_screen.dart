import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({Key? key}) : super(key: key);

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {

  final AudioPlayer player = AudioPlayer();
  String path = 'Manike.mp3';

  bool isPlaying = false ;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String url = "https://firebasestorage.googleapis.com/v0/b/soundcloud-a4b50.appspot.com/o/audio_files%2Fminikin_rage_riders.mp3?alt=media&token=6f86c67e-60b2-4473-87ca-1e436f595bb0";

  String formatTime(int seconds){
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();


    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });


    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }


  @override
  void dispose() {
    //player.release();
    player.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text('Audio Screen'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value){
                  final position = Duration(seconds: value.toInt());
                  player.seek(position);
                  player.resume();
                }
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formatTime(position.inSeconds)),
                  Text(formatTime((duration).inSeconds)),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  child: IconButton(
                      onPressed: ()  {
                        if(isPlaying){
                           player.pause();
                        }else{
                             // player.play(UrlSource(url));
                          player.play(AssetSource('Manike.mp3'));
                        }
                      },
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                  child: IconButton(
                    onPressed: (){
                      player.stop();
                    },
                    icon: Icon(Icons.stop),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
