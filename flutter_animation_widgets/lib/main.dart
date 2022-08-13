import 'package:flutter/material.dart';
import 'package:flutter_animation_widgets/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Widgets',
      home: Home(),
    );
  }
}


