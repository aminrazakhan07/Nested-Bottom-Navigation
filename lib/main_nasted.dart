// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasted_bottom_nav/screens/about_scr.dart';
import 'package:nasted_bottom_nav/screens/home_scr.dart';
import 'package:nasted_bottom_nav/screens/info_scr.dart';
import 'package:nasted_bottom_nav/screens/setting_scr.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.black,
        items: <BottomNavigationBarItem>[
          ////////// Home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.blue,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_max,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
          ////////// Search
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.blue,
            ),
            label: 'Search',
            activeIcon: Icon(
              Icons.manage_search_sharp,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
          ////////// Info
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_sharp,
              size: 30,
              color: Colors.blue,
            ),
            label: 'Info',
            activeIcon: Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
          ////////// About
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 30,
              color: Colors.blue,
            ),
            label: 'About',
            activeIcon: Icon(
              Icons.group_add_rounded,
              size: 30,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: HomeScr());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: SettingScr());
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: InfoScr());
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: AboutScr());
              },
            );
        }
        return Container();
      },
    );
  }
}
