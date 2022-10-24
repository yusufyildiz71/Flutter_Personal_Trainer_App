import 'package:fitness_flutter/pages/onboard_screen.dart';
import 'package:fitness_flutter/pages/tabs/tabs.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Scaffold(
        body: OnboardPage(),
      ),
    );
  }
}




