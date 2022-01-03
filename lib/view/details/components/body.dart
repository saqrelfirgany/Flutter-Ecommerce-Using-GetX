import 'package:ecommerce_getx/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'add_to_cart_row.dart';
import 'details_description.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(400),
            child: Image.network(
              model.image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15)),
          DetailsDescription(model: model),
          AddToCartRow(model: model)
        ],
      ),
    );
  }
}
