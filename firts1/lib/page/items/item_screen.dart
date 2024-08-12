import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //Scafford đã dùng bên ngoài
      children: [
        //Chỗ này nếu 1 list dữ liệu thì nên set dữ liệu vào 1 mảng rồi dùng ListView.builder // GridView.builder
        //( tìm hiểu ListView & GridView để biết thêm chi tiết)
        //để tạo ra các item, không nên viết thủ công như thế này
        // Làm xong nhớ test trường hợp dữ liệu nhiều để xem có bị lỗi over flow không
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 65),
              padding: const EdgeInsets.only(bottom: 10, right: 50),
              alignment: Alignment.bottomRight,
              color: const Color(0xff081016),
              width: 180,
              height: 180,
              //Đối với icon sử dụng tại : https://api.flutter.dev/flutter/material/Icons-class.html  >> ưu tiên sử dụng icon từ đây
              // hoặc tải file png/svg từ figma về dùng
              child: const Text(
                'NBA',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 65),
              padding: const EdgeInsets.only(bottom: 10, right: 50),
              alignment: Alignment.bottomRight,
              width: 180,
              height: 180,
              color: const Color(0xff081016),
              child: const Text(
                'MLB',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 10, right: 50),
              alignment: Alignment.bottomRight,
              width: 180,
              height: 180,
              color: const Color(0xff081016),
              // child: Image.asset('firts1\assets\images\NBA.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(bottom: 10, right: 50),
              alignment: Alignment.bottomRight,
              width: 180,
              height: 180,
              color: const Color(0xff081016),
              child: const Text(
                'NBA',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 195),
          padding: const EdgeInsets.only(bottom: 10, right: 50),
          alignment: Alignment.bottomRight,
          width: 180,
          height: 180,
          color: const Color(0xff081016),
          child: const Text(
            'MMM',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
