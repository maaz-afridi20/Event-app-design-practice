// ignore_for_file: prefer_const_constructors

import 'package:event_app/UI/auth/get_started.dart';
import 'package:event_app/UI/auth/login_screen.dart';
import 'package:event_app/UI/widgets/verification_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
