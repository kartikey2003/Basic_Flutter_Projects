// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:second/Setting/setting_1.dart';
import 'package:second/Setting/setting_2.dart';
import 'package:second/Setting/setting_3.dart';
import 'package:second/Setting/setting_4.dart';
import 'package:second/Setting/setting_5.dart';
import 'package:second/Setting/setting_6.dart';
import 'package:second/Setting/setting_7.dart';

class DrawerForHomeScreen extends StatefulWidget {
  const DrawerForHomeScreen({super.key});

  @override
  State<DrawerForHomeScreen> createState() => _DrawerForHomeScreenState();
}

class _DrawerForHomeScreenState extends State<DrawerForHomeScreen> {
  static const List<Widget> screens = [
    Setting1(),
    Setting2(),
    Setting3(),
    Setting4(),
    Setting5(),
    Setting6(),
    Setting7(),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black45),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/image2.jpg"),
                ),
              ),
              Text(
                'Divya Sharma',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'DivyaSharma@gmail.com',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
        for (int i = 0; i < screens.length; i++)
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => screens[i]));
            },
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.settings),
                  trailing: Icon(Icons.chevron_right),
                  iconColor: Colors.pink,
                ),
                Divider(
                  color: Colors.orange,
                ),
              ],
            ),
          ),
      ],
    ));
  }
}
