import 'package:ecommerce_getx/core/view_model/auth_view_model.dart';
import 'package:ecommerce_getx/view/auth/sign_up_screen.dart';
import 'package:ecommerce_getx/view/widgets/custom_button.dart';
import 'package:ecommerce_getx/view/widgets/custom_button_with_icon.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:ecommerce_getx/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../size_config.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                          text: "Welcome,", color: Colors.black, fontSize: 30),
                      GestureDetector(
                        onTap: () {
                          Get.to(SignUpScreen());
                        },
                        child: const CustomText(
                          text: "Sign Up",
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  const CustomText(
                    text: "Sign in to continue",
                    fontSize: 18,
                    color: Colors.grey,
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
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const CustomText(
                    text: "Forget Password?",
                    fontSize: 15,
                    alignment: Alignment.topRight,
                    color: Colors.black,
                  ),
                  SizedBox(height: getProportionateScreenHeight(25)),
                  CustomButton(
                    text: 'SIGN IN',
                    onPressed: () {
                      _formKey.currentState!.save();
                      if (_formKey.currentState!.validate()) {
                        controller.signInWithEmailAndPassword();
                      }
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  const CustomText(
                    text: '-OR-',
                    color: Colors.black,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  CustomButtonWithIcon(
                    onPressed: () => controller.googleSignIn(),
                    text: "Sign in with Google",
                    imageSrc: "assets/images/google.png",
                  ),
                  SizedBox(height: getProportionateScreenWidth(4)),
                  CustomButtonWithIcon(
                    onPressed: () {},
                    text: "Sign in with Facebook",
                    imageSrc: "assets/images/facebook.png",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
