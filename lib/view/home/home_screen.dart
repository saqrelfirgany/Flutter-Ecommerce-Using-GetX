import 'package:ecommerce_getx/core/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: Get.find<HomeViewModel>(),
      builder: (controller) => controller.loading.value
          ? const Center(child: CircularProgressIndicator())
          : const Scaffold(body: Body()),
    );
  }
}
