import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_1/room_screen.dart';

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
        backgroundColor: Colors.white,
        title: const Text('Profile Upgradation'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 225,
                          color: Colors.purple.shade50,
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          color: Colors.purple.shade50,
                        )
                      ],
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 125,
                      top: MediaQuery.of(context).size.height / 2 - 375,
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 100,
                      top: MediaQuery.of(context).size.height / 2 - 350,
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blue.shade100,
                            ),
                            child: const Center(
                              child: Text(
                                'K',
                                style: TextStyle(
                                    fontSize: 100,
                                    color: Color.fromARGB(255, 2, 112, 201)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 700,
              width: double.infinity,
              color: Colors.purple.shade50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your Name'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  //  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: const Text('Enter your Mobile Number'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  // const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your Email-Id'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  //  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your Age'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  //  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          label: const Text('Enter your Gender'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red),
          child: TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const RoomScreen()),
                  (route) => false);
            },
            child: const Text(
              'Update Your Profile',
              style: TextStyle(
                fontSize: 25,
                //backgroundColor: Colors.black,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
