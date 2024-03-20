import 'package:flutter/material.dart';

import '../screen/home_screen.dart';
class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      currentIndex: 0,
      selectedIconTheme: const IconThemeData(
          size: 35
      ),
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items:  <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.message,size: 30,),
          label: 'message',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person,size: 30,),
          label: 'person',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              onPressed:toTopScreen,
              icon: const Icon(Icons.vertical_align_top_rounded)),
          label: 'home',
        ),
      ],
    );
  }
  toTopScreen(){
    HomeScreen.scrollController?.animateTo(0, duration: const Duration(seconds: 1),
        curve: Curves.easeInOutSine);
  }
}
