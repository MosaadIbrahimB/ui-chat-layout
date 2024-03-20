import 'package:flutter/material.dart';
import '../const.dart';
class ItemsListHorizontal extends StatelessWidget {
  ItemsListHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: listAvatar.length,
            itemBuilder: (context, i) {
              int index=i%listAvatar.length;
              return listAvatar[index];
            }
        )
    );
  }
}
