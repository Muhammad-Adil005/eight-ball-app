import 'dart:async';

import 'package:flutter/material.dart';

import '../bloc_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // This is the function after 5 seconds user navigate to the other screen called Home Screen
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomeScreenBloc(), //HomeScreenProvider(),
        ),
      ); // Replace with actual next screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/8ball.jpg'),
              //fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: SafeArea(
    //     child: Image.asset(
    //       'assets/8ball.jpg',
    //       height: MediaQuery.sizeOf(context).height,
    //       width: MediaQuery.sizeOf(context).width,
    //     ),
    //   ),
    // );
  }
}
