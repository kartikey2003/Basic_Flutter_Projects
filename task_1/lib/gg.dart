import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            img(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      formField_first(),
                      const SizedBox(height: 30),
                      formField_Second(),
                      const SizedBox(height: 20),
                      button()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget img() {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.network(
        'https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?size=626&ext=jpg&ga=GA1.1.1230110316.1679116925&semt=sph',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget formField_first() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (v) {
        if (v!.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget formField_Second() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget button() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Implement your authentication logic here
          String email = _emailController.text;
          String password = _passwordController.text;
          // For demo purpose, just print the values
          print('Email: $email');
          print('Password: $password');
        }
      },
      child: const Text('Login'),
    );
  }
}
