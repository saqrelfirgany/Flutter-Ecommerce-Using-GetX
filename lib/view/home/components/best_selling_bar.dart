import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BestSellingBar extends StatelessWidget {
  const BestSellingBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CustomText(
          text: 'Best Selling',
          fontSize: 18,
          color: Colors.black,
        ),
        CustomText(
          text: 'See All',
          fontSize: 16,
          color: Colors.black,
        ),
      ],
    );
  }
}