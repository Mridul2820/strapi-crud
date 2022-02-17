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

  final pass = TextEditingController();

  void _submitData() {}
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
                // name
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: border,
                    labelText: 'Full name',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    border: border,
                    focusedBorder: borderFocus,
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
                // email
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: border,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
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
                    labelStyle: TextStyle(
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
                // confirm passwords
                TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: border,
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white,
                    ),
                    border: border,
                    focusedBorder: borderFocus,
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
                // signUP button
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
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
                            return const EmailLoginScreen();
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
                      'Already have an account? Login',
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
