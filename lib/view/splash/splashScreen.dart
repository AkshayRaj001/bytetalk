import 'dart:async';

import 'package:bytetalk/view/bottomnavigationbar.dart';
import 'package:bytetalk/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>login(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child:
              Lottie.asset('assets/animations/Animation - 1703143697076.json'),
        ),
      ),
    );
  }
}
