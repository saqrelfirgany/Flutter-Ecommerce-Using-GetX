import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primaryColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.all(getProportionateScreenHeight(20)),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
