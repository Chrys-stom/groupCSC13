// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';
import 'package:weed_detector/home_page.dart';
import 'package:weed_detector/sign_in_screen.dart';

class Splash extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Splash() : super();

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: const HomePage(),
        title: const Text(
          'Welcome To \nWeed Detection \nAnd \nMornitoring System \nBy \nGroup CSC13',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 24, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        image: Image.asset("assets/weed.jpeg"),
        backgroundColor: const Color.fromARGB(255, 12, 49, 15),
        photoSize: 70.0,
        loaderColor: Colors.amberAccent);
  }
}
