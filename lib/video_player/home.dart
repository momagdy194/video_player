import 'package:flutter/material.dart';
import 'package:flutter_videos/video_player/cheweitem.dart';
import 'package:video_player/video_player.dart';

class VideoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ChewieItem(
              VideoPlayerController.network(
                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
              true)
        ],
      ),
    );
  }
}
