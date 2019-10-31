import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'package:flut_test/home/index.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    PlaceholderWidget("My Booking"),
    PlaceholderWidget("My Profile")
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        selectedItemColor: Colors.redAccent[700],
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.book),
            title: new Text('My Booking '),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('My Profile '),
          ),
        ],
      ),
    );
  }
}
