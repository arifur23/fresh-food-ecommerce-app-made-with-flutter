import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Container(
        height: 55,
        width: 100,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
