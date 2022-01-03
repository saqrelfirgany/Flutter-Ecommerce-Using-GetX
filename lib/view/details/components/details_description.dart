import 'package:ecommerce_getx/model/product_model.dart';
import 'package:ecommerce_getx/view/details/components/sub_title_row.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenHeight(15)),
      child: Column(
        children: [
          CustomText(
            text: model.name.toUpperCase(),
            color: Colors.black,
            fontSize: 26,
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          SubTitleRow(model: model),
          SizedBox(height: getProportionateScreenHeight(15)),
          const CustomText(
            text: "Details",
            fontSize: 20,
            color: Colors.black,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          CustomText(
            text: model.description,
            fontSize: 18,
            maxLines: 6,
            color: Colors.black,
            height: 1.5,
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      ),
    );
  }
}
