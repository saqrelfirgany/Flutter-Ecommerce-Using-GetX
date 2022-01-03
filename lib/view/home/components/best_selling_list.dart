import 'package:ecommerce_getx/core/view_model/home_view_model.dart';
import 'package:ecommerce_getx/view/details/details_screen.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';

class BestSellingList extends StatelessWidget {
  const BestSellingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => SizedBox(
        height: getProportionateScreenHeight(455),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.productModel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(DetailsScreen(model: controller.productModel[index]));
              },
              child: SizedBox(
                width: getProportionateScreenWidth(165),
                child: Column(
                  children: [
                    Container(
                      height: getProportionateScreenWidth(250),
                      width: getProportionateScreenWidth(155),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade100,
                      ),
                      child: SizedBox(
                        height: getProportionateScreenWidth(250),
                        width: getProportionateScreenWidth(150),
                        child: Image.network(
                          controller.productModel[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(6)),
                    CustomText(
                      text: controller.productModel[index].name,
                      alignment: Alignment.bottomLeft,
                      color: Colors.black,
                    ),
                    SizedBox(height: getProportionateScreenWidth(6)),
                    CustomText(
                      text: controller.productModel[index].description,
                      alignment: Alignment.bottomLeft,
                      color: Colors.grey,
                    ),
                    SizedBox(height: getProportionateScreenWidth(6)),
                    CustomText(
                      text: "\$${controller.productModel[index].price}",
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
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
