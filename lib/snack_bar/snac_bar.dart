import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        RaisedButton(
              onPressed: () {
                showFlashBar(context);
              },
              child: Text("show flash bar"),
            ),

        ],
      ),
    );
  }
  
  showFlashBar(context) {
    Flushbar(
      title: 'tttttt',
      message: 'sssssddd',
      onTap: (s) {
        print('osssss $s');
      },
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
//      barBlur: 15,
      backgroundGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [Colors.black87, Colors.black54]),
      borderRadius: 10,
    )..show(context);
  }
}
