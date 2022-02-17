import 'package:flutter/material.dart';
import '../screens/new_alarm_screen.dart';
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
          child: Column(
            children: [
              ScreenTitle(
                'Hello ' + responseData['username'],
              ),
              SizedBox(
                height: 16.0,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NewAlarmScreen();
                      },
                    ),
                  );
                },
                child: const Icon(Icons.add_alarm),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
