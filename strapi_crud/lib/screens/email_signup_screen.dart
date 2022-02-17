import 'package:flutter/material.dart';
import '../screens/email_login_screen.dart';
import '../components/title.dart';
import '../components/screen_container.dart';

class EmailSignupScreen extends StatefulWidget {
  @override
  State<EmailSignupScreen> createState() => _EmailSignupScreenState();
}

class _EmailSignupScreenState extends State<EmailSignupScreen> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;
  String? name;
  bool _obscureText = false;

  final pass = new TextEditingController();

  void _submitData() {}
  var border = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  );
  var space = SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return ScreenCotainer(
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // email
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    border: border,
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
                  controller: pass,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: border,
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
                // confirm passwords
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: border,
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value != pass.text) {
                      return 'password not match';
                    }
                    return null;
                  },
                ),
                space,
                // name
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full name',
                    prefixIcon: const Icon(Icons.account_circle),
                    border: border,
                  ),
                  onSaved: (val) {
                    name = val;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some name';
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text('Sign Up'),
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
                            return EmailLoginScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text('Already have an account?'),
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
