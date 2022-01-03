import 'package:ecommerce_getx/core/view_model/auth_view_model.dart';
import 'package:ecommerce_getx/core/view_model/control_view_model.dart';
import 'package:ecommerce_getx/view/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/components/bottom_nav_bar.dart';

class ControlScreen extends GetWidget<AuthViewModel> {
  const ControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          ? LoginScreen()
          : GetBuilder<ControlViewModel>(
              builder: (controller) => Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: const BottomNavBar(),
              ),
            );
    });
  }
}