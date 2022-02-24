import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class OrderSummaryCoupon extends StatelessWidget {
    OrderSummaryCoupon({Key? key}) : super(key: key);

  String hintText = 'Coupon Code';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 55,
      width: size.width * .85,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 20,top: 5),
        child: TextField(
          obscureText: false,
          onChanged: null,
          keyboardType: TextInputType.number,
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
