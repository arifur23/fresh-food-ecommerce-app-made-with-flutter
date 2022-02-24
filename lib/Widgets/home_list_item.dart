import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    Key? key, required this.boxColor, required this.imagePath, required this.name,
  }) : super(key: key);

  final Color boxColor;
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: size.height * .23,
        width: 135,
        decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Image.asset(imagePath),
              const SizedBox(height: 15,),
              Text(name,style: kStyleNormal,)
            ],
          ),
        ),
      ),
    );
  }
}

