import 'package:ecommerce_getx/core/service/database/cart_database_helper.dart';
import 'package:ecommerce_getx/model/cart_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartViewModel extends GetxController {
  ValueNotifier<bool> _loading = ValueNotifier(false);

  ValueNotifier<bool> get loading => _loading;

  addProduct(CartProductModel cartProductModel) async {
    var dbHelper = CartDatabaseHelper.db;
    await dbHelper.insert(cartProductModel);
    update();
  }
}
