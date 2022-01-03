import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final void Function(String?)? onSave;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    this.onSave,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 16,
            color: Colors.grey.shade700,
          ),
          TextFormField(
            onSaved: onSave,
            validator: validator,
            decoration:  InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.black),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
