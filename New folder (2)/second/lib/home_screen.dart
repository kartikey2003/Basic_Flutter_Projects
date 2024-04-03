import 'package:flutter/material.dart';
import 'package:second/drawer_for_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerForHomeScreen(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
    );
  }
}
