import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile Screen'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
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
                      height: 150,
                      width: double.infinity,
                    ),
                    const Icon(Icons.accessibility_sharp),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
