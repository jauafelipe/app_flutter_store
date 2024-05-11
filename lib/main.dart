import 'package:flutter/material.dart';
import 'package:new_app/home/Home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: HomeApp(),
    );
  }
}
