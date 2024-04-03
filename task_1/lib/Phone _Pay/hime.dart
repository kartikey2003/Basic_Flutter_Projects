import 'package:flutter/material.dart';
import 'package:task_1/Phone%20_Pay/room.dart';
import 'package:task_1/gg.dart';
import 'package:task_1/k.dart';
import 'package:task_1/practice.dart';

class HomePhonePay extends StatefulWidget {
  const HomePhonePay({super.key});

  @override
  State<HomePhonePay> createState() => _HomePhonePayState();
}

class _HomePhonePayState extends State<HomePhonePay> {
  int slectedstate = 0;
  static const List<Widget> screen = [
    RoomScreenPhonePay(),
    Hello(),
    Happy(),
    Practies()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[slectedstate],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              slectedstate = value;
            });
          },
          selectedItemColor: Color.fromARGB(255, 87, 28, 155),
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'home')
          ]),
    );
  }
}
