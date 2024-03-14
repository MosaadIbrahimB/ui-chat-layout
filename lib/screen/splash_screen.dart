import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tf/screen/layout_screen.dart';



class SplashScreen extends StatefulWidget {
static const nameRoute="SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
Timer(const Duration(seconds: 3), () {
  Navigator.of(context).push(MaterialPageRoute(builder: (c)=>LayOutScreen()));
});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001501),
body: Center(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 230,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff0ca9d5),width: 2),
          borderRadius: BorderRadiusDirectional.circular(250),
          image:const DecorationImage(image: AssetImage("assets/images/logoEasyLearn.png")) ,
        ),


          ),
      SizedBox(height: 25,),
      ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (c)=>LayOutScreen()));
      },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff095167)),

          child: Icon(Icons.navigate_next,size:50,color: Colors.white,))
    ],
  ),
),
    );
  }
}
