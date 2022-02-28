import 'package:flutter/material.dart';
import 'package:test2/Home.dart';
import 'package:test2/profile.dart';

class MyNavigator {
  static Widget my_navigator(int index, BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Home()),
                  (Route<dynamic> route) => false);
              break;

            default:
          }
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'خانه'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: 'مورد علاقه'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'پروفایل'),
        ]);
  }
}
