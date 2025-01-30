import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text("Search"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: screens[_selectedIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //     // selectedItemColor: Theme.of(context).primaryColor,
    //     type: BottomNavigationBarType.shifting,
    //     currentIndex: _selectedIndex,
    //     onTap: _onTap,
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: FaIcon(FontAwesomeIcons.house),
    //         label: "Home",
    //         tooltip: "What are you?",
    //         backgroundColor: Colors.amber,
    //       ),
    //       BottomNavigationBarItem(
    //         icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
    //         label: "Search",
    //         tooltip: "What are you?",
    //         backgroundColor: Colors.teal,
    //       ),
    //     ],
    //   ),
    // );

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
        ],
      ),
      tabBuilder: (context, index) => screens[index],
    );
  }
}
