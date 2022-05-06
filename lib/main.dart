import 'package:day1/contactus.dart';
import 'package:day1/counter.dart';
import 'package:day1/profileCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/contactus': (context) => ContactUsScreen()},
      theme: ThemeData(
          textTheme: TextTheme(
              headline1: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ))),
      home: ProfileScreen(),
    );
  }
}
