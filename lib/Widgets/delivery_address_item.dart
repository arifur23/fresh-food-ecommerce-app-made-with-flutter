import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class DeliveryAddressItem extends StatelessWidget {
  const DeliveryAddressItem({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
          height: 55,
          width: size.width * .85,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: kStyleNormal,),
              ],
            ),
          )
      ),
    );
  }
}
