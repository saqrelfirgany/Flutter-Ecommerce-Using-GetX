import 'package:ecommerce_getx/model/product_model.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class SubTitleRow extends StatelessWidget {
  const SubTitleRow({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          width: getProportionateScreenWidth(160),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomText(
                text: "Size: ",
                color: Colors.black,
                fontSize: 20,
              ),
              CustomText(
                text: model.size,
                color: Colors.black,
                fontSize: 20,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          width: getProportionateScreenWidth(160),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomText(
                text: "Color: ",
                color: Colors.black,
                fontSize: 20,
              ),
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                width: getProportionateScreenWidth(20),
                height: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: model.color
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
