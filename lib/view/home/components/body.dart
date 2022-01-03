import 'package:ecommerce_getx/view/home/components/search_bar.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'best_selling_bar.dart';
import 'best_selling_list.dart';
import 'categories_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          child: Column(
            children: [
              const SearchBar(),
              SizedBox(height: getProportionateScreenHeight(30)),
              const CustomText(
                  text: "Categories", fontSize: 20, color: Colors.black),
              SizedBox(height: getProportionateScreenHeight(30)),
              CategoriesList(),
              const BestSellingBar(),
              SizedBox(height: getProportionateScreenHeight(30)),
              BestSellingList(),
            ],
          ),
        ),
      ),
    );
  }
}
