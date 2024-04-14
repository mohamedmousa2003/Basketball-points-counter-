import 'dart:async';

import 'package:baskball/page/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  static String routName = "splash_screen";
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/splash_screen.jpeg",
              ),
              fit: BoxFit.cover)),
    );
  }
}
