import 'package:flutter/material.dart';
import 'access/login.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class LoveMenu extends StatefulWidget {
  const LoveMenu({Key? key}) : super(key: key);

  @override
  State<LoveMenu> createState() => _LoveMenuState();
}

class _LoveMenuState extends State<LoveMenu> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Login(),
    Center(
      child: Text('Holo'),
    ),
    Center(
      child: Text('Tonotos'),
    ),
    Center(
      child: Text('Configuración'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Menu'),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.settings),
            title: Text("Config"),
            selectedColor: Colors.blueGrey,
          ),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
