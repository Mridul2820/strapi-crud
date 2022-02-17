import 'package:flutter/material.dart';
import '../screens/email_signup_screen.dart';
import '../components/screen_container.dart';

class EmailLoginScreen extends StatefulWidget {
  const EmailLoginScreen({Key? key}) : super(key: key);

  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  String? email;
  String? password;
  bool _obscureText = false;

  final pass = TextEditingController();

  void _submitData() {
    // if (email == null || password == null || name == null) {
    //   return;
    // } else {
    print('Email: $email');
    print('Password: $password');
    // }
  }

  var border = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );

  var borderFocus = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );

  var space = const SizedBox(height: 24);

  @override
  Widget build(BuildContext context) {
    return ScreenCotainer(
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // email
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: border,
                    fillColor: Colors.black12,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    border: border,
                    focusedBorder: borderFocus,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    email = val;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                space,
                // password
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  controller: pass,
                  decoration: InputDecoration(
                    enabledBorder: border,
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    border: border,
                    focusedBorder: borderFocus,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  onSaved: (val) {
                    password = val;
                  },
                  obscureText: !_obscureText,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                space,
                // signUP button
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _submitData();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                space,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EmailSignupScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Dont have an account? Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
