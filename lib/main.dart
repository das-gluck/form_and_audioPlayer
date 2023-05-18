import 'package:flutter/material.dart';
import 'package:form/audio_screen.dart';

import 'package:form/loginScreen.dart';

import 'Home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      home: Home(),
    );
  }
}


