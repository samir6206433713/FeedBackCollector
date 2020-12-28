import 'package:feedbackcollector/registration.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'registration.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
     // theme: ThemeData.dark(),
      home: Login(),

    );
  }
}
