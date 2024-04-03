// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:second/login_screen.dart';
import 'package:second/room_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(
          child: Text(
            "Sign In Screen",
            style: TextStyle(),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                )),
            // decoration: BoxDecoration(
            //     color: Colors.red,
            //     border: Border.all(color: Colors.green),
            //     borderRadius: BorderRadius.circular(20)),
          ),
          Image.asset(
            'assets/Mobile-login.jpg',
            height: 250,
            width: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label: Text('Enter your E-mail Id'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              obscureText: isVisable,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                label: Text('Enter your Password'),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisable = !isVisable;
                    });
                  },
                  icon:
                      Icon(isVisable ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => RoomScreen()),
                    (route) => false);
              },
              child: Text('Submit')),
        ],
      ),
    );
  }
}
