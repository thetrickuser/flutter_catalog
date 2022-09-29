import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          "Login",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.right,
        ),
      )),
      body: const Center(
          child: Text(
        "Login Page",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      )),
    );
  }
}
