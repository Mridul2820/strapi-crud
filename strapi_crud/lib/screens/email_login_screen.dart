import 'package:flutter/material.dart';
import '../components/title.dart';
import '../components/screen_container.dart';

class EmailLoginScreen extends StatefulWidget {
  @override
  State<EmailLoginScreen> createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
              const SizedBox(height: 26.0),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 16.0),
              RaisedButton(
                child: const Text('Login'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
