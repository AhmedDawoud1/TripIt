import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trip_it/custom_color.dart';
import 'package:trip_it/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  NavigationFunction(context) async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return StartScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    NavigationFunction(context);
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
         SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [CustomColor.blue, CustomColor.violet],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 1.0],
              tileMode: TileMode.clamp
          ),
          borderRadius: BorderRadius.circular(55.0),
        ),
        child: Column(
          children:
          [
            SizedBox(
              height: 380,
            ),
            Center(
                child: Image.asset(
                    'assets/images/llogo.png',
                ),
            ),
          ],
        ),
      ),
    );
  }
}
