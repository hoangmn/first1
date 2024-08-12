import 'package:firts1/page/home/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const NewsScreen(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Card(
        elevation: 6,
        margin: EdgeInsets.zero,
        color: const Color(0xff081016),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.newspaper),
              title: const Text('News'),
              selectedColor: const Color(0xffF31731),
              unselectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.event),
              title: const Text('Events'),
              selectedColor: const Color(0xffF31731),
              unselectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.leaderboard),
              title: const Text('Standing'),
              selectedColor: const Color(0xffF31731),
              unselectedColor: Colors.white,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.widgets),
              title: const Text('Item'),
              selectedColor: const Color(0xffF31731),
              unselectedColor: Colors.white,
            ),
          ],
          itemPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}


