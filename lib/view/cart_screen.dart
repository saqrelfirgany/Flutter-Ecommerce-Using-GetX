import 'package:ecommerce_getx/size_config.dart';
import 'package:ecommerce_getx/view/widgets/custom_button.dart';
import 'package:ecommerce_getx/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<String> names = <String>[
    'Saqr',
    'Saqr',
    'Saqr',
    'Saqr',
    'Saqr',
  ];
  List<String> images = <String>[
    'assets/images/Image.png',
    'assets/images/Image.png',
    'assets/images/Image.png',
    'assets/images/Image.png',
    'assets/images/Image.png',
  ];
  List<int> prices = <int>[100, 120, 130, 140, 150];

  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Container(
                    height: getProportionateScreenHeight(180),
                    child: Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(110),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(24)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: getProportionateScreenWidth(14)),
                              CustomText(
                                text: names[index],
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              SizedBox(height: getProportionateScreenWidth(14)),
                              CustomText(
                                text: "\$${prices[index].toString()}",
                              ),
                              SizedBox(height: getProportionateScreenWidth(14)),
                              Container(
                                width: getProportionateScreenWidth(100),
                                height: getProportionateScreenHeight(60),
                                color: Colors.grey.shade200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.add, color: Colors.black),
                                    SizedBox(
                                        width: getProportionateScreenWidth(10)),
                                    CustomText(
                                      text: "1",
                                      color: Colors.black,
                                      alignment: Alignment.center,
                                      fontSize: 20,
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(10)),
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: getProportionateScreenWidth(30),
                                      ),
                                      child: const Icon(Icons.minimize,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ));
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: getProportionateScreenWidth(16));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'Total',
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    CustomText(
                      text: '\$2000',
                      fontSize: 20,
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  width: getProportionateScreenWidth(140),
                  height: getProportionateScreenWidth(65),
                  child: CustomButton(
                    text: 'CHECKOUT',
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
