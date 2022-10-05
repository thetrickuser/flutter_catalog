import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    const int day = 4;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Catalog App",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              // return ItemWidget(item: CatalogModel.items[index]);
              return ItemWidget(item: dummyList[index]);
            }),
      ),
      drawer: const MyDrawer(),
    );
  }
}
