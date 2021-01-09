import 'package:flutter/material.dart';
import 'package:flutter_videos/snack_bar/snac_bar.dart';
import 'package:flutter_videos/video_player/cheweitem.dart';
import 'package:flutter_videos/video_player/home.dart';
import 'package:video_player/video_player.dart';

import 'Divition_button/divition_button.dart';
import 'flutter_hook/hook_ups.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return: DivisionButtonX(),
//    return: VideoHome(),

    return FlutterGookScreen();
  }
}
