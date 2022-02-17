import 'package:flutter/material.dart';
import '../components/title.dart';
import '../components/screen_container.dart';

import './email_login_screen.dart';
import '../components/button.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  void _loginWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EmailLoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenCotainer(
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ScreenTitle('Flutter With Strapi'),
              Column(
                children: <Widget>[
                  Button(
                    'Sign In With Google',
                    'google',
                    () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                    'Sign In With Email',
                    'email',
                    _loginWithEmail,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
