import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lablysis/views/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Icon(
        Icons.bloodtype_outlined,
        color: Colors.blue,
        size: 100,
      )),
    );
  }
}
