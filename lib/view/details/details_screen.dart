import 'package:ecommerce_getx/model/product_model.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  ProductModel model;

  DetailsScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(model: model),
    );
  }
}
