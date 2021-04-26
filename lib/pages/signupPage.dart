import 'package:firebase/pages/signUp.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOW',
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Column(
            children: [Signup()],
          ),
        ),
      ],
    ));
  }
}
