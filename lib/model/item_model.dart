import 'package:flutter/material.dart';

import '../widget/avatar_model.dart';

class ItemData {
  String title, subtitle, time;
  IconData icon;
  AvatarModel image;
  ItemData(
      {this.image = const AvatarModel(
        imageName: "assets/images/logoA.PNG",
        // radiusOne: 40,
        // radiusTwo: 30,
      ),
        this.title = "",
        this.time = "",
        this.subtitle = "",
        this.icon = Icons.check_circle_outline});
}