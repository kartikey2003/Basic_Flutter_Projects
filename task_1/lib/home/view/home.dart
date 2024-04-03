// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:task_1/home/model/post_model.dart';
import 'package:task_1/home/network/home_network.dart';
import 'package:task_1/network_config/api_endpoints.dart';

class HomeScreenTask extends StatefulWidget {
  final int id;
  const HomeScreenTask({super.key, required this.id});

  @override
  State<HomeScreenTask> createState() => _HomeScreenTaskState();
}

class _HomeScreenTaskState extends State<HomeScreenTask> {
  PostModelList? postModelList;
  @override
  void initState() {
    getPosts();
    super.initState();
  }

  Future<void> getPosts() async {
    postModelList = await HomeNetwork.postsList(widget.id);
    //print(postModelList?.title);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                  child: Text(
                (postModelList?.body ?? '').baseURL(),
                style: const TextStyle(fontSize: 20),
              )),
            ],
          );
        },
      ),
    );
  }
}
