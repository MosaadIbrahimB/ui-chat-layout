import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: const Color(0xff001501),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
            ),
            Container(
              width: 230,
              height: MediaQuery.of(context).size.height * .1,
              alignment: Alignment.center,
              child: const Icon(
                Icons.facebook_outlined,
                size: 130,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .4,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .1,
                width: 70,
                child: Column(
                  children: [
                    const Text("from Meta"),
                    Image.asset(
                      "assets/images/meta.png",
                      color: Colors.blue,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
