import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dgecommerc/Screens/HomeScreen/HomeScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Global.dart';
import '../CartScreen/CartScreen.dart';
import '../ProfileScreen/ProfileScreen.dart';
import 'customnavCons.dart';


class MyDashBoard extends StatefulWidget {

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarIte>[
        BottomNavyBarIte(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: primaryColor,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarIte(
          icon: Icon(Icons.shopping_cart_outlined),
          title: Text('Cart'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarIte(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.black,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        // BottomNavyBarIte(
        //   icon: Icon(Icons.message),
        //   title: Text(
        //     'Messages ',
        //   ),
        //   activeColor: Colors.pink,
        //   inactiveColor: _inactiveColor,
        //   textAlign: TextAlign.center,
        // ),
        // BottomNavyBarIte(
        //   icon: Icon(Icons.settings),
        //   title: Text('Settings'),
        //   activeColor: Colors.blue,
        //   inactiveColor: _inactiveColor,
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }


  Widget getBody() {
    List<Widget> pages = [

      HomeView(),
      CartScreen(),
      ProfileScreen(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }


}