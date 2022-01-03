import 'package:ecommerce_getx/core/view_model/home_view_model.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => SizedBox(
        height: getProportionateScreenHeight(140),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categoryModel.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenHeight(80),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      controller.categoryModel[index].image,
                      // color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(16)),
                CustomText(
                    text: controller.categoryModel[index].name,
                    color: Colors.black),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: getProportionateScreenWidth(20),
          ),
        ),
      ),
    );
  }
}
