import 'package:flutter/material.dart';
import '../mainpages/matches/matches.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../constants.dart';

class LoveMenu extends StatefulWidget {
  const LoveMenu({Key? key}) : super(key: key);

  @override
  State<LoveMenu> createState() => _LoveMenuState();
}

class _LoveMenuState extends State<LoveMenu> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(
      child: Text('Home'),
    ),
    Matches(),
    Center(
      child: Text('Tonotos'),
    ),
    Center(
      child: Text('Configuración'),
    )
  ];

  void tabNavigation(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.orange,
        backgroundColor: backgroundNav,
        currentIndex: _currentIndex,
        onTap: tabNavigation,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("Config"),
            selectedColor: Colors.orange,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(color: background,),
          _screens[_currentIndex]
        ],
      ),
    )
    );
  }
}
