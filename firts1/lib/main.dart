import 'package:flutter/material.dart';
import 'package:firts1/page/news/news_screen.dart';
import 'package:firts1/page/items/item_screen.dart';
import 'package:firts1/page/event/event_screen.dart';
import 'package:firts1/page/standing/standing_screen.dart';
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
      //Cái này nó sẽ định nghĩa style chung cho toàn bộ App, nghiên cứu MaterialApp > ThemeData để biết thêm chi tiết về các thuộc tính
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[700],
      ),
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
  // 0. màn hình mặc định là màn đầu tiên có index = 0
  int _currentIndex = 0;

  // 2. Sau đó nó dùng cái index để lấy vị trí page tương ứng trong list này
  //(ban đầu chỉ có 1 biến nên khi click tab có index > 0 thì bị lỗi, vì không có page tương ứng)
  final List<Widget> _screens = [
    const NewsScreen(),
    //nên thêm tạm 3 trang ở đây, khi nào viết sẽ thay thế
    const EventScreen(),
    const StandingScreen(),
    const ItemScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      //Bỏ thẻ Card ở đây
      bottomNavigationBar: SalomonBottomBar(
        //Các thuộc tính có tính lặp lại nên tìm cách làm common, không nên viết lại nhiều lần
        backgroundColor: const Color(0xff081016),
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xffF31731),
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            // 1. Khi chọn tab ở đây thì nó sẽ lấy index của tab đó
            _currentIndex = index;
          });
        },
        items: [
          //Chỗ này 4 item giống y chang nhau, chỉ khác icon và title => có thể tối ưu
          SalomonBottomBarItem(
            icon: const Icon(Icons.newspaper),
            title: const Text('News'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.event),
            title: const Text('Events'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.leaderboard),
            title: const Text('Standing'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.widgets),
            title: const Text('Item'),
          ),
        ],
        itemPadding: const EdgeInsets.all(15),
      ),
    );
  }
}
