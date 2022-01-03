import 'package:ecommerce_getx/core/service/home_services.dart';
import 'package:ecommerce_getx/model/category_model.dart';
import 'package:ecommerce_getx/model/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final List<CategoryModel> _categoryModel = [];
  final List<ProductModel> _productModel = [];
  ValueNotifier<bool> _loading = ValueNotifier(false);

  ValueNotifier<bool> get loading => _loading;

  List<CategoryModel> get categoryModel => _categoryModel;
  List<ProductModel> get productModel => _productModel;

  HomeViewModel() {
    getCategory();
    getBestSellingProducts();
  }

  getCategory() async {
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(
          CategoryModel.fromJson(value[i].data() as Map<dynamic, dynamic>),
        );
        _loading.value = false;
      }
      update();
    });
  }

  getBestSellingProducts() async {
    _loading.value = true;
    HomeService().getBestSelling().then((value) {
      for (int i = 0; i < value.length; i++) {
        _productModel.add(
          ProductModel.fromJson(value[i].data() as Map<dynamic, dynamic>),
        );
        _loading.value = false;
        print(_productModel.length);
      }
      update();
    });
  }
}
