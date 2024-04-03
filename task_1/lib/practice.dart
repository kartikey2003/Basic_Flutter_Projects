import 'package:flutter/material.dart';

class Practies extends StatefulWidget {
  const Practies({super.key});

  @override
  State<Practies> createState() => _PractiesState();
}

class _PractiesState extends State<Practies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [appbar(), restBody()],
        ),
      ),
    );
  }

  Widget appbar() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red.shade50),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_double_arrow_left_sharp,
                color: Colors.black,
              )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off_outlined),
                    color: Colors.black,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Text(
                      ('remove ads').toUpperCase(),
                      style: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget restBody() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 350),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                //color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/690000918/photo/dog-with-human-expression.jpg?s=612x612&w=0&k=20&c=SaS3KdRYN9e1qWa2pQxmcTCrzfgQDv17X4qXNIHf_6M='))),
          );
        },
      ),
    );
  }
}
