import 'package:flutter/material.dart';

import 'package:foodee_app/Screens/home_screen.dart';
import 'package:foodee_app/Screens/my_cart_screen.dart';
import 'package:foodee_app/Screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int myIndex = 0;
  List<Widget> WidgetList = const [
    HomeScreen(),
    MyCartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xfffF49392),
            unselectedItemColor: Color(0xfffB6D7CF),
            currentIndex: myIndex,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 40,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 40,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  label: ''),
            ]),
        body: Center(
          child: WidgetList[myIndex],
        ));
  }
}
