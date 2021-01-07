import 'package:flutter/material.dart';
import 'package:flutter_videos/cheweitem.dart';
import 'package:video_player/video_player.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
      ChewieItem(VideoPlayerController.network("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"), true)

    ],),);
  }
}
