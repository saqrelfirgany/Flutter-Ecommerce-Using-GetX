import 'package:ecommerce_getx/model/product_model.dart';
import 'package:ecommerce_getx/view/widgets/custom_button.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class AddToCartRow extends StatelessWidget {
  const AddToCartRow({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenHeight(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const CustomText(
                text: "PRICE ",
                fontSize: 20,
                color: Colors.grey,
              ),
              CustomText(
                text: "\$" + model.price,
                fontSize: 20,
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(200),
            height: getProportionateScreenWidth(60),
            child: CustomButton(
              text: "Add to Cart",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
