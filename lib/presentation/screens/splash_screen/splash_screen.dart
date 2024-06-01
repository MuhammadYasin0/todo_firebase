import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/icons/ic_splash.png"),
           
           SizedBox(height: 300,),
            Container(
              width: 130,
              child: LoadingIndicator(indicatorType: Indicator.ballClipRotatePulse,
              colors: const [Colors.black],
              strokeWidth: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}