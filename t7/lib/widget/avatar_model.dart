import 'package:flutter/material.dart';
class AvatarModel extends StatelessWidget {
  const AvatarModel({
    super.key,
    this.imageName="assets/images/logoEasyLearn.png",this.radiusOne=24,this.radiusTwo=22
  });
  final double ?radiusOne;
  final double ?radiusTwo;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: radiusOne,
        backgroundColor: Colors.blue,
        child: CircleAvatar(
          radius: radiusTwo,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage(imageName),
        ),
      ),
    );
  }
}
