
import 'package:expense_tracker/Home/BottomNavigators/HomeAcount.dart';
import 'package:expense_tracker/Home/BottomNavigators/HomeMore.dart';

import 'package:expense_tracker/Home/BottomNavigators/HomeStats.dart';
import 'package:expense_tracker/Home/Transactions/HomeTrans.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BottomNav());
}
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}
class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    HomeStat(),
    HomeAccount(),
    HomeMore(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background color of the entire scaffold
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff2A50BA),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Trans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Stat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
