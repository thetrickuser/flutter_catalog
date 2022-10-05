import 'package:flutter/cupertino.dart';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iPhone 12 Pro",
        price: 79999,
        color: "#33505a",
        imageUrl:
            "https://mediacenterpk.com/image/catalog/Apple/03-10-19/Apple/iPhone-12-Pro-Max/128-GB/Grp.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.imageUrl});
}
