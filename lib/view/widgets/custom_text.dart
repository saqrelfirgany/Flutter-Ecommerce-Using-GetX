import 'package:ecommerce_getx/constants.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final int maxLines;
  final double height;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.color = primaryColor,
    this.alignment = Alignment.topLeft,
    this.maxLines = 2,
    this.height = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          height: height,
          color: color,
          fontSize: getProportionateScreenWidth(fontSize),
        ),
      ),
    );
  }
}
