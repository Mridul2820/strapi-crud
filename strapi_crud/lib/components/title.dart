import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  String text;
  ScreenTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            color: Colors.black,
            blurRadius: 30.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
    );
  }
}
