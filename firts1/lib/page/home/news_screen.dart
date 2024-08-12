import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff182128),
      body: Column(
        children: [
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
      ),
    );
  }
}
