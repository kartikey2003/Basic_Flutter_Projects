// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:project_1/profile_screen.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  int SlectedState = 0;
  static List<String> image = [
    'https://images.unsplash.com/photo-1530554764233-e79e16c91d08?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1631452180519-c014fe946bc7?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1617622141675-d3005b9067c5?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1488900128323-21503983a07e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  static List<String> images = [
    'assets/offers.jpg',
    'assets/goverment.jpg',
    'assets/healthy.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  iconColor: Colors.red,
                  title: Text('Search "Pasta" '),
                  trailing: Icon(Icons.mic_none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(227, 201, 169, 65),
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset('assets/gift_card.jpg'),
                          iconColor: Colors.red,
                          title: const Text(
                            '14 days of FREE delivery with GOLD & much more ',
                            style: TextStyle(fontSize: 20, f),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Claim Now',
                                  style: TextStyle(
                                    //backgroundColor: Colors.black,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                  '------------------------------------------- For You ----------------------------------------'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      //color: Colors.amber,
                      child: ListView.builder(
                          itemCount: image.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            //index = ,
                            return Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(right: 4),
                                decoration: BoxDecoration(
                                  color: Colors.purple.shade50,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            height: 150,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                              image: NetworkImage(
                                                  image[index % 5]),
                                            )),
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                '@ 30 % off',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Burger Farm',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Delisious order now ',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              border:
                                                  Border.all(color: Colors.red),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Order Now',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ));
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                  '--------------------------------------- Explore more ----------------------------------------'),
            ),
            SingleChildScrollView(
                child: Column(children: [
              Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: double.infinity,
                  //color: Colors.amber,
                  margin: EdgeInsets.all(8),
                  child: ListView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //index = ,
                        return Container(
                          width: MediaQuery.of(context).size.width / 2,
                          margin: EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                            //color: Colors.purple.shade50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(images[index % 5]),
                        );
                      }))
            ])),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                  '--------------------------------  What in your Mind  --------------------------------------'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v) {
          setState(() {
            SlectedState = v;
          });
        },
        currentIndex: SlectedState,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        //showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining_outlined),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.lunch_dining), label: 'Dining'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      leading: locationIcon(),
      title: addressDetail(),
      actions: [languageOptions(), profileSetting()],
    );
  }

  Widget locationIcon() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.location_on),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget addressDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'My Place',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text('A-12A, Arya Nagar, Murlipura, Jaipur',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15))
      ],
    );
  }

  Widget languageOptions() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 400,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 221, 213, 213),
                        ),
                        child: const SingleChildScrollView(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('English'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Hindi'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Gujrati'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Marathi'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Tamil'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Urdu'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                              ListTile(
                                leading: Icon(Icons.grade_outlined),
                                title: Text('Spanish'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      );
                    });
              },
              icon: const Icon(Icons.sort_by_alpha_rounded)),
        ),
      ],
    );
  }

  Widget profileSetting() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen())),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 134, 192, 240),
              child: Text('K'),
            ),
          ),
        ),
      ],
    );
  }
}
