import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_events/home_screen.dart';

// import 'home_screen.dart';
// import 'package:flutter_events/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<Timer> loadTimers() async {
    return new Timer(Duration(seconds: 2), navigate);
  }
  
  @override
  void initState() {
    // navigate();
    // HomeScreen();
    loadTimers();
    super.initState();
    
  }

  navigate(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => HomeScreen()
    ));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Image.network("https://itsallwidgets.com/images/logo.png")
        )
    );
  }
}