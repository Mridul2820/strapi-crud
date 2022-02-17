import 'package:flutter/material.dart';
import '../components/title.dart';

import '../components/screen_container.dart';

class HomeScreen extends StatelessWidget {
  dynamic responseData;
  HomeScreen({this.responseData});

  @override
  Widget build(BuildContext context) {
    return ScreenCotainer(
      SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ScreenTitle(
            'Hello ' + responseData['username'],
          ),
        ),
      ),
    );
  }
}
