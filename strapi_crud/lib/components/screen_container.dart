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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: child,
      ),
    );
  }
}
