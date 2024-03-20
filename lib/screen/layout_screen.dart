import 'package:flutter/material.dart';
import '../widget/bottom_widget.dart';
import 'home_screen.dart';

class LayOutScreen extends StatelessWidget {
  static     const  String routeName="LayOutScreen";

final List<Widget>listTab=[
  HomeScreen()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: listTab[0],
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
