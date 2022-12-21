import 'package:flutter/material.dart';
import 'package:tikzer/pages/home.dart';
import 'package:tikzer/pages/inbox.dart';
import 'package:tikzer/pages/plus.dart';
import 'package:tikzer/pages/profile.dart';
import 'package:tikzer/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_rounded), label: 'inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ]
      ),
    );
  }
}