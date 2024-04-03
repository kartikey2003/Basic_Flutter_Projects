import 'package:flutter/material.dart';

class Happy extends StatefulWidget {
  const Happy({super.key});

  @override
  State<Happy> createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          Center(
            child: Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: emailControler,
                      validator: (value) {
                        if (value!.isEmpty) {
                          /*
                          final formKey = GlobalKey<FormState>();TextEditingController emailControler = TextEditingController(); TextEditingController passwordControler = TextEditingController();
  
                          */
                          return 'Enter ur email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter ur Email here')),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordControler,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter ur Password';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Enter ur Password here')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Center(
                          child: TextButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  String email = emailControler.text;
                                  String password = passwordControler.text;
                                  print('email: $email');
                                  print('password: $password');
                                }
                              },
                              child: const Text('Log In'))),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
