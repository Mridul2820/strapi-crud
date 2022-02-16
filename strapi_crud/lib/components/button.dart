import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final String imagePath;
  final Function onPressed;

  Button(
    this.text,
    this.imagePath,
    this.onPressed,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/$imagePath.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
      onPressed: () {
        onPressed();
      },
    );
  }
}
