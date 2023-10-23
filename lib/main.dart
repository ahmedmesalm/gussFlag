import 'package:flutter/material.dart';
import 'package:guessflag/screens/quizescreen.dart';
import 'package:guessflag/screens/resultscreen.dart';

void main() {
  runApp(GuessFlag());
}

class GuessFlag extends StatelessWidget {
  const GuessFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizeScreen(),
    );
  }
}
