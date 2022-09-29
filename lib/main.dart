import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Material(
            child: Center(
                child: Text(
      "Welcome to flutter",
      textDirection: TextDirection.ltr,
    ))));
  }
}
