import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'custom_text.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final String text;
  final String imageSrc;
  final void Function()? onPressed;

  const CustomButtonWithIcon({
    Key? key,
    required this.text,
    required this.imageSrc,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          EdgeInsets.all(getProportionateScreenHeight(20)),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: getProportionateScreenHeight(20)),
          Image.asset(imageSrc),
          SizedBox(width: getProportionateScreenHeight(60)),
          CustomText(
            text: text,
            alignment: Alignment.center,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
