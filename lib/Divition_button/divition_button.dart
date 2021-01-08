import 'package:division/division.dart';
import 'package:flutter/material.dart';

class DivisionButtonX extends StatefulWidget {
  @override
  _DivisionButtonXState createState() => _DivisionButtonXState();
}

class _DivisionButtonXState extends State<DivisionButtonX> {
  bool pressed = false;

  final buttonStyle = (pressed) => TxtStyle()
    ..alignment.center()
    ..background.color(pressed ? Colors.orange : Colors.white)
    ..textColor(pressed ? Colors.white : Colors.orange)
    ..borderRadius(all: 5)
    ..border(all: 3, color: Colors.orange)
    ..padding(vertical: 10, horizontal: 15)
    ..ripple(true)
    ..animate(1, Curves.decelerate);

  Gestures buttonGestures() =>
      Gestures()..isTap((isPressed) => setState(() => pressed = isPressed));

  @override
  Widget build(BuildContext context) {
    return Txt(
      'Styled button!',
      style: buttonStyle(pressed),
      gesture: buttonGestures(),
    );
  }
}
