import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/constants/gaps.dart';
import 'package:flutter_tiktok_clone/constants/sizes.dart';
import 'package:flutter_tiktok_clone/features/main_navigation/stf_screen.dart';
import 'package:flutter_tiktok_clone/features/main_navigation/widgets/nav_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    StfScreen(key: GlobalKey()),
    StfScreen(key: GlobalKey()),
    Container(),
    StfScreen(key: GlobalKey()),
    StfScreen(key: GlobalKey()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(Sizes.size12),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              text: "Home",
              isSelected: _selectedIndex == 0,
              icon: FontAwesomeIcons.house,
              selectedIcon: FontAwesomeIcons.house,
              onTap: () => _onTap(0),
            ),
            NavTab(
              text: "Discover",
              isSelected: _selectedIndex == 1,
              icon: FontAwesomeIcons.compass,
              selectedIcon: FontAwesomeIcons.solidCompass,
              onTap: () => _onTap(1),
            ),
            NavTab(
              text: "Inbox",
              isSelected: _selectedIndex == 3,
              icon: FontAwesomeIcons.message,
              selectedIcon: FontAwesomeIcons.solidMessage,
              onTap: () => _onTap(3),
            ),
            NavTab(
              text: "Profile",
              isSelected: _selectedIndex == 4,
              icon: FontAwesomeIcons.user,
              selectedIcon: FontAwesomeIcons.solidUser,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
