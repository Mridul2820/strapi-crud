import 'package:flutter/material.dart';

import './screens/login_signup_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // String? jwt;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Strapi CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginSignUpScreen(),
    );
  }
}
