import 'package:flutter/material.dart';

class ScreenCotainer extends StatelessWidget {
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const ScreenCotainer(
    this.child,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: child,
      ),
    );
  }
}
