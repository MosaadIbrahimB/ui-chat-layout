
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tf/screen/create_account_screen.dart';
import 'package:tf/screen/home_screen.dart';
import 'package:tf/screen/layout_screen.dart';
import 'package:tf/screen/login_screen.dart';
import 'package:tf/screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}
//ToDo valid and new account screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook",
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName:(_)=>LoginScreen(),
        LayOutScreen.routeName:(_)=>LayOutScreen(),
        SplashScreen.routeName:(_)=>SplashScreen(),
        CreateAccountScreen.routeName:(_)=>CreateAccountScreen(),
      },
    );
  }
}



