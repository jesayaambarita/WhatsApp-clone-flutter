import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/home_page.dart';

class SplashSecreen extends StatefulWidget {
  const SplashSecreen({Key? key}) : super(key: key);

  @override
  State<SplashSecreen> createState() => _SplashSecreenState();
}

class _SplashSecreenState extends State<SplashSecreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 8),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff075E54),
        child: Center(
          child: Image.asset("images/logoj.png"),
        ),
      ),
    );
  }
}
