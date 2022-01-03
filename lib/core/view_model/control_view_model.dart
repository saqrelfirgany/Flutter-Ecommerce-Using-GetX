import 'package:ecommerce_getx/view/cart_screen.dart';
import 'package:ecommerce_getx/view/home/home_screen.dart';
import 'package:ecommerce_getx/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlViewModel extends GetxController {
  int _navValue = 0;
  Widget _currentScreen = HomeScreen();

  get navValue => _navValue;

  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navValue = selectedValue;
    print(_currentScreen);
    print(selectedValue);
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeScreen();
          break;
        }
      case 1:
        {
          _currentScreen = CartScreen();
          break;
        }
      case 2:
        {
          _currentScreen = ProfileScreen();
          break;
        }
    }
    update();
  }
}
