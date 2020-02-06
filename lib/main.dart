import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:untitled_project/widget/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wakelock for development
    Wakelock.enable();
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Center(
              child: Text(
                'Simple Text',
                style: Theme.of(context).textTheme.body1,
              ),
            ),
          );
        }),
      ),
    );
  }
}
