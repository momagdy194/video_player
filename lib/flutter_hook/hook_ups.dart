import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'scroleLogic.dart';

class FlutterGookScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final hideFedAnimationController = useAnimationController(
        duration: Duration(milliseconds: 100), initialValue: 1);
    final scrollController = mYUseScrollController(hideFedAnimationController);

    return Scaffold(
      floatingActionButton: FadeTransition(
        opacity: hideFedAnimationController,
        child: ScaleTransition(
          scale: hideFedAnimationController,
          child: FloatingActionButton(
            onPressed: () {
              print(hideFedAnimationController);
              print("object");
            },
            child: Text("data"),
          ),
        ),
      ),
      body: ListView(
        controller: scrollController,
        children: [
          for (int i = 0; i < 10; i++)
            Icon(
              Icons.ac_unit,
              size: 250,
            )
        ],
      ),
    );
  }
}
