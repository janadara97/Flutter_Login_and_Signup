
import 'package:flutter/material.dart';
import 'package:sporty/constants.dart';
import 'Welcome/welcome_screen.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sporty',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: WelcomeScreen(),
    );
  }
}
