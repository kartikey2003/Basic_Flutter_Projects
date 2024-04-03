import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoomScreenPhonePay extends StatefulWidget {
  const RoomScreenPhonePay({super.key});

  @override
  State<RoomScreenPhonePay> createState() => _RoomScreenPhonePayState();
}

class _RoomScreenPhonePayState extends State<RoomScreenPhonePay> {
  int slectedState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            firdtCard(),
            listView(),
            transerMoney(),
            rewards(),
            recharge()
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(
              'assets/profile.png',
              height: 50,
            )),
      ),
      backgroundColor: const Color.fromARGB(255, 95, 37, 158),
      actions: [
        Image.asset(
          'assets/Qr code scanner.png',
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Image.asset(
            'assets/Vector.png',
            height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 19.0,
          ),
          child: Image.asset(
            'assets/Group 1.png',
            height: 24,
          ),
        )
      ],
      title: const Text(
        'India',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget firdtCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12, width: 2)
            //  color: Colors.black,
            ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21.0, top: 21),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/Ellipse 2.png',
                  height: 41,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get more with the new update',
                    style: TextStyle(
                        // color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'We’ve enhanced the app, and added ',
                    style: TextStyle(fontSize: 13),
                  ),
                  const Text(
                    'some new exciting features!',
                    style: TextStyle(fontSize: 13),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 14.0,
                      left: 200,
                    ),
                    child: Container(
                      height: 31,
                      width: 101,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromARGB(255, 90, 36, 155),
                      ),
                      child: TextButton(
                        onPressed: () {
                          const AboutDialog(
                            children: [
                              Text(
                                  'data ,style: TextStyle(color: Colors.white),Hai')
                            ],
                          );
                        },
                        child: Text(
                          'Download'.toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listView() {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Expanded(
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 150,
                  width: 350,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/Rectangle 4.png',
                    fit: BoxFit.fill,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget commanButton() {
    return Container(
      height: 100,
      width: 80,
      margin: const EdgeInsets.only(left: 20),
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 92, 38, 155),
            ),
            child: Image.asset(
              'assets/profile2.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text('To Mobile'),
          ),
          const Text('Number')
        ],
      ),
    );
  }

  Widget transerMoney() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 255,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.black12,
            border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 19.0, top: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Transfer Money',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Row(
                children: [
                  commanButton(),
                  commanButton(),
                  commanButton(),
                  commanButton()
                ],
              ),
            ),
            Container(
              height: 58,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 239, 255),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 19.0),
                    child: Text(
                      'My UPI ID:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('9829xxxxx@XYZ'),
                  ),
                  Spacer(),
                  Icon(Icons.chevron_right_outlined)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rewards() {
    return Container(
      height: 150,
      width: double.infinity,
      //color: Colors.black,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
              height: 120,
              width: 137,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 78, 132, 218)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.assessment_outlined,
                              color: Colors.white,
                            ))),
                  ),
                  const Text(
                    'PhonePe Wallet',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
              height: 120,
              width: 137,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 78, 132, 218)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.contacts_outlined,
                              color: Colors.white,
                            ))),
                  ),
                  const Text(
                    'Rewards',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
              height: 120,
              width: 137,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 78, 132, 218)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person_2_outlined,
                              color: Colors.white,
                            ))),
                  ),
                  const Text(
                    'Invite Now',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget recharge() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.black12,
            border: Border.all(color: Colors.black12)),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 19.0, top: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Recharge & Pay Bills',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
