import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter Username', labelText: 'Username'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        onChanged: ((value) {
                          name = value;
                          setState(() {});
                        }),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter Password', labelText: 'Password'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value!.length < 8) {
                            return "Password is too short";
                          }
                          return null;
                        },
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  onTap: () => goToHome(context),
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text("Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
