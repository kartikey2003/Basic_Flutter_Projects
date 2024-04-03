// ignore_for_file: prefer_const_constructors, unused_element, unused_field, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_import, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second/login_screen.dart';
import 'package:second/sign_in.dart';
import 'package:second/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
