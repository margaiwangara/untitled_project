import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'package:untitled_project/widget/theme.dart';
import 'package:untitled_project/ui/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Wakelock for development
    Wakelock.enable();
    return MaterialApp(
      theme: appTheme,
      home: SplashScreen(),
    );
  }
}
