import 'package:flutter/material.dart';
import 'package:todo_firebase/presentation/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 190, 231, 240)),
        //useMaterial3: true,
      //),
      home: SplashScreen() 
    );
  }
}

