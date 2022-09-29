import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Username', labelText: 'Username'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Password', labelText: 'Password'),
                    obscureText: true,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(),
                    child: const Center(
                        child: Text(
                      "Login",
                      textDirection: TextDirection.ltr,
                    )),
                    onPressed: () {
                      print("Hi User!");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
