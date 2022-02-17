import 'package:flutter/material.dart';
import '../components/title.dart';
import '../components/screen_container.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenCotainer(
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScreenTitle('Login with Email'),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
