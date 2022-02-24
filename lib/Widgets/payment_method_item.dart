
import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 200,
        width: size.width * .75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor
        ),

      ),
    );
  }
}
