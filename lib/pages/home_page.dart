import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int day = 4;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Catalog App",
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        )),
      ),
      body: const Center(
          child: Text(
        "Welcome to day $day of flutter",
        textDirection: TextDirection.ltr,
      )),
      drawer: const MyDrawer(),
    );
  }
}
