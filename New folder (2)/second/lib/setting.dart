import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Setting Screen'),
        ),
        body: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Card(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image2.jpg',
                        fit: BoxFit.cover,
                        height: 600,
                        width: double.infinity,
                      ),
                      const Icon(Icons.accessibility_sharp),
                    ],
                  ),
                ),
              );
            }));
  }
}
