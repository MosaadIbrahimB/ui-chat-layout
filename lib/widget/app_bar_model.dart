import 'package:flutter/material.dart';

import 'avatar_model.dart';

class AppBarModel extends StatelessWidget {
  const AppBarModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AvatarModel(),
        SizedBox(width: 30),
        Text(
          "Chats",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ],
    );
  }
}
