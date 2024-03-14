import 'package:flutter/material.dart';
import '../widget/bottom_widget.dart';
import 'home_screen.dart';

class LayOutScreen extends StatelessWidget {
   LayOutScreen({super.key});

final List<Widget>listTab=[
  MyHomePage()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listTab[0],
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
