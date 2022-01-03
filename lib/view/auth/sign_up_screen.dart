import 'package:ecommerce_getx/core/view_model/auth_view_model.dart';
import 'package:ecommerce_getx/view/auth/login_screen.dart';
import 'package:ecommerce_getx/view/widgets/custom_button.dart';
import 'package:ecommerce_getx/view/widgets/custom_button_with_icon.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_getx/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../size_config.dart';

class SignUpScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Get.off(LoginScreen()),
          child: const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(50),
              right: getProportionateScreenHeight(10),
              left: getProportionateScreenHeight(10),
              bottom: getProportionateScreenHeight(10),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const CustomText(
                    text: "SIGN UP,",
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  CustomTextFormField(
                    text: 'Name',
                    hint: 'Saqr',
                    onSave: (value) {
                      controller.name = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('Error');
                      }
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  CustomTextFormField(
                    text: 'Email',
                    hint: 'Saqr-ElFirany@gmail.com',
                    onSave: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('Error');
                      }
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(40)),
                  CustomTextFormField(
                    text: 'Password',
                    hint: '* * * * * * * * * * * * *',
                    onSave: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('Error');
                      }
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(30)),
                  CustomButton(
                    text: 'SIGN UP',
                    onPressed: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        controller.createAccountWithEmailAndPassword();
                      }
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
