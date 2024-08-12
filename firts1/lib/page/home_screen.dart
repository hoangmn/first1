import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:firts1/page/home/news_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState(); 
}

class _HomeScreenState extends State<HomeScreen> {
  int _currenIndex = 0; 

  final _items = [
    SalomonBottomBarItem(
      icon: const Icon(Icons.newspaper),
      unselectedColor: Colors.white,
      selectedColor: const Color(0xffF31731),
      title: const Text('News'),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.event),
      unselectedColor: Colors.white,
      selectedColor: const Color(0xffF31731),
      title: const Text('Events'),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.leaderboard),
      unselectedColor: Colors.white,
      selectedColor: const Color(0xffF31731),
      title: const Text('Standing'),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.widgets),
      unselectedColor: Colors.white,
      selectedColor: const Color(0xffF31731),
      title: const Text('Item'),
    ),
  ];

  final _screens = [
    const NewsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff081016),
      body: _screens[_currenIndex],
      bottomNavigationBar: Card(
        elevation: 6,
        margin: EdgeInsets.zero,
        color: const Color(0xff081016),
        child: SalomonBottomBar(
          items: _items,
          currentIndex: _currenIndex, 
          onTap: (index) => setState(() {
            _currenIndex = index;
          }),
          itemPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}

