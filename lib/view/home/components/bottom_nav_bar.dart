import 'package:ecommerce_getx/core/view_model/control_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../size_config.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlViewModel>(
      init: ControlViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
              child: Text('Explore'),
            ),
            icon: Padding(
              padding: EdgeInsets.only(top: getProportionateScreenWidth(10)),
              child: Image.asset(
                'assets/images/Icon_Explore.png',
                fit: BoxFit.contain,
                width: getProportionateScreenWidth(20),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Text('Cart'),
            icon: Image.asset(
              'assets/images/Icon_Cart.png',
              fit: BoxFit.contain,
              width: getProportionateScreenWidth(20),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Text('Account'),
            icon: Image.asset(
              'assets/images/Icon_User.png',
              fit: BoxFit.contain,
              width: getProportionateScreenWidth(20),
            ),
            label: '',
          ),
        ],
        currentIndex: controller.navValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
