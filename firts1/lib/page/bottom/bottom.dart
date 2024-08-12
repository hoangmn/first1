// import 'package:flutter/material.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(), // Sử dụng HomeScreen làm widget chính
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0; // Trạng thái để theo dõi tab đã chọn

//   // Danh sách các widget để hiển thị cho từng tab
//   final List<Widget> _widgetOptions = <Widget>[
//     Center(child: Text('Nội dung trang chủ')), // Nội dung cho tab Home
//     Center(child: Text('Nội dung tìm kiếm')), // Nội dung cho tab Search
//     Center(child: Text('Nội dung thông báo')), // Nội dung cho tab Notifications
//     Center(child: Text('Nội dung hồ sơ')), // Nội dung cho tab Profile
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index; // Cập nhật chỉ số tab đã chọn
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber,
//       body: _widgetOptions.elementAt(_selectedIndex), // Hiển thị nội dung dựa trên chỉ số đã chọn
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.black,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white70,
//         currentIndex: _selectedIndex, // Đánh dấu tab hiện tại
//         onTap: _onItemTapped, // Xử lý khi nhấn vào tab
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Trang chủ', // Nhãn cho biểu tượng Home
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Tìm kiếm', // Nhãn cho biểu tượng Search
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Thông báo', // Nhãn cho biểu tượng Notifications
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Hồ sơ', // Nhãn cho biểu tượng Profile
//           ),
//         ],
//       ),
//     );
//   }
// }

