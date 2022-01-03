import 'package:ecommerce_getx/helper/extenstion.dart';
import 'package:flutter/material.dart';

class ProductModel {
  late String name, image, description, size, price;
  late Color color;

  ProductModel({
    required this.image,
    required this.name,
    required this.description,
    required this.color,
    required this.size,
    required this.price,
  });

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    if (map.isEmpty) {
      return;
    }
    name = map['name'];
    image = map['image'];
    description = map['description'];
    color = HexColor.fromHex(map['color']);
    size = map['size'];
    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'color': color,
      'size': size,
      'price': price,
    };
  }
}
