import 'package:flutter/material.dart';

class Setting1 extends StatefulWidget {
  const Setting1({super.key});

  @override
  State<Setting1> createState() => _Setting1State();
}

class _Setting1State extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting - 1'),
      ),
    );
  }
}
